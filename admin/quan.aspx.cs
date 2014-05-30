using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class ccwl_admin_quan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string flag = Request.QueryString["flag"];
            string userId = Request.QueryString["userId"];
            if (flag == "1" && userId != "")
            {
                //普通管理员权限(插入)
                bind();
            }
            if (flag == "2" && userId != "")
            {
                //可能是普通管理员，超级管理员(修改)
                bindQuan();
            }
        }
    }
    //绑定所有权限
    public void bind()
    {
        string sql = "select * from sysFun";
        DataSet set = DBClass.GetTableData(sql, "sys");
        foreach (DataRow row in set.Tables["sys"].Rows)
        {
            ListItem li = new ListItem();
            li.Text = row["sysName"].ToString();
            li.Value = row["id"].ToString();
            chklist.Items.Add(li);
        }
        string sql3 = "select userName from admin where id=" + Request.QueryString["userId"];
        lblUserName.Text = DBClass.ExecuteScalar(DBClass.connString, sql3);
    }
    //绑定已存在的权限
    public void bindQuan()
    {
        string sql = "select * from admin where id=" + Request.QueryString["userId"];
        DataSet set = DBClass.GetTableData(sql, "ad");
        if (set.Tables["ad"].Rows.Count > 0)
        {
            lblUserName.Text = set.Tables["ad"].Rows[0]["userName"].ToString();
            if (set.Tables["ad"].Rows[0]["roleId"].ToString() == "1")
            {
                Response.Write("<script>alert('此角色是超级管理员，拥有所的权限!');window.location='addadmin.aspx'</script>");
            }
            //初始化这个用户原来具有的权限(角色)
            ArrayList arrSource = new ArrayList();
            //得到原来所有的权限
            string sql2 = "select * from roleRight where userId=" + Request.QueryString["userId"] + "";
            DataSet set2 = DBClass.GetTableData(sql2, "role");
            foreach (DataRow row in set2.Tables["role"].Rows)
            {
                arrSource.Add(row["sysFunId"].ToString());
            }
            //加载全部的菜单
            string sql3 = "select * from sysFun";
            DataSet set3 = DBClass.GetTableData(sql3, "fun");
            foreach (DataRow row in set3.Tables["fun"].Rows)
            {
                ListItem li = new ListItem();
                li.Text = row["sysName"].ToString();
                li.Value = row["id"].ToString();
                if (arrSource.Contains(li.Value))
                {
                    li.Selected = true;
                }
                chklist.Items.Add(li);
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string flag = Request.QueryString["flag"];
        string userId = Request.QueryString["userId"];
        bool result = false;
        bool result2 = false;
        //增加
        if (flag == "1" && userId != "")
        {
            foreach (ListItem li in chklist.Items)
            {
                //添加选中的权限
                if (li.Selected)
                {
                    string sql = "insert into roleRight values(" + userId + "," + li.Value + ")";
                    DBClass.ExecuteNonQuery(DBClass.connString, sql);
                    result = true;
                }
            }
        }
        if (result)
        {
            Response.Write("<script>alert('添加权限生效');window.location='addadmin.aspx'</script>");
        }
        //修改
        if (flag == "2" && userId != "")
        {
            //修改用户角色表
            //首先得到原来所有的权限
            ArrayList arrSource = new ArrayList();
            string sql2 = "select * from roleRight where userId=" + Request.QueryString["userId"] + "";
            DataSet set2 = DBClass.GetTableData(sql2, "role");
            foreach (DataRow row in set2.Tables["role"].Rows)
            {
                arrSource.Add(row["sysFunId"].ToString());
            }
            foreach (ListItem li in chklist.Items)
            {
                //如果数据库不存在我们选中的，则给该用户添加改权限
                if (li.Selected)
                {
                    if (!arrSource.Contains(li.Value))
                    {
                        string sql3 = "insert into roleRight values(" + userId + "," + li.Value + ")";
                        if (DBClass.ExecuteNonQuery(DBClass.connString, sql3))
                        {
                            result2 = true;
                        }
                    }
                }
                //如果数据存在我们没有选中的，则删除该用户的权限
                else
                {
                    if (arrSource.Contains(li.Value))
                    {
                        string sql4 = "delete from roleRight where userId=" + userId + " and sysFunId=" + li.Value + "";
                        if (DBClass.ExecuteNonQuery(DBClass.connString, sql4))
                        {
                            result2 = true;
                        }
                    }
                }
            }
        }
        if (result2)
        {
            Response.Write("<script>alert('修改权限生效');window.location='addadmin.aspx'</script>");
        }
    }
}
