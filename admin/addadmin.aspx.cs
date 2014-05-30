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

public partial class admin_addadmin1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AdminCs.CheckLoginState();
        if (!IsPostBack)
        {
             
            bind();
        }
    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //删除用户菜单表
        string sql2 = "delete from roleRight where userId=" + GridView1.DataKeys[e.RowIndex].Value;
        DBClass.ExecuteNonQuery(DBClass.connString,sql2);
        //删除用户表
        string sql = "delete from admin where id=" + GridView1.DataKeys[e.RowIndex].Value + "";
        DBClass.ExecuteNonQuery(DBClass.connString,sql);
        GridView1.EditIndex = -1;
        bind();
    }
    public void bind()
    {
        try
        {
            string sql = "select*from admin";
            DataSet set = DBClass.GetTableData(sql, "sql");
            GridView1.DataSource = set;
            GridView1.DataBind();
        }
        catch (Exception f)
        {
            error.alter(f.Message);
        }
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        adname.Text = "";
        pass.Text = "";
        pass2.Text = "";
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql2 = "select * from admin where username='" + StringClass.Encrypt(adname.Text.Trim(), "yx139222") + "'";
        DataSet set = DBClass.GetTableData(sql2, "name");
        if (set.Tables["name"].Rows.Count > 0)
        {
            Response.Write("<script>alert('该用户名已经存在！')</script>");
            return;
        }
        //插入管理员
        string sql = "insert into admin(userName,password,roleId) values ('" + adname.Text + "','" + StringClass.Encrypt(pass.Text.Trim(), "yx139222") + "',1);select @@identity";
        string userId = DBClass.ExecuteScalar(DBClass.connString, sql);
        if (userId != "")
        {
            
                Response.Write("<script>alert('添加成功！')</script>");
           
        }
        else
        {
            Response.Write("<script>alert('添加失败！')</script>");
        }
    }
}
