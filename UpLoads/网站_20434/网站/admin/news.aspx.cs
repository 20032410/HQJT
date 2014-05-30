using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class admin_news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AdminCs.CheckLoginState();
        if (!IsPostBack)
        {
            
            bind();
            string id = Request.QueryString["id"];
            if (id != null && id != "")
            {
                Button1.Visible = true;
                Button2.Visible = false;
                string sql = "select * from news where id=" + id;
                DataSet set = DBClass.GetTableData(sql, "user");
                foreach (DataRow read in set.Tables["user"].Rows)
                {
                    txtContent.Value = read["des"].ToString();
                    txtTitle.Text = read["title"].ToString();
                }
            }
            else
            {
                Button1.Visible = false;
                Button2.Visible = true;
            }
        }
    }
    public void bind()
    {
        string sql = "select id,title,pubTime,pubCount from news order by id desc";
        DataSet set = DBClass.GetTableData(sql, "sql");
        GridView1.DataSource = set;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sql = "delete from news where id=" + GridView1.DataKeys[e.RowIndex].Value;
        DBClass.ExecuteNonQuery(DBClass.connString, sql);
        GridView1.EditIndex = -1;
        bind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string sql = "insert into [news](title,des,pubTime,pubCount) values(@title,@content,'" + DateTime.Now.ToString() + "',0)";
        SqlParameter[] para = new SqlParameter[] { new SqlParameter("@title", txtTitle.Text), new SqlParameter("@content", txtContent.Value) };
        if (DBClass.ExecuteNonQueryCan(sql, para))
        {
            Response.Write("<script>alert('添加成功！');</script>");
            bind();
            txtContent.Value = "";
            txtTitle.Text = "";
        }
        else
        {
            Response.Write("<script>alert('添加失败！');</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null && Request.QueryString["id"] != "")
        {
            string sql = "update news set title=@title,des=@content where id=@id";
            SqlParameter[] para = new SqlParameter[] { new SqlParameter("@title", txtTitle.Text), new SqlParameter("@content", txtContent.Value), new SqlParameter("@id", Request.QueryString["id"]) };
            if (DBClass.ExecuteNonQueryCan(sql, para))
            {
                Response.Write("<script>alert('修改成功！');</script>");
                bind();
                txtContent.Value = "";
                txtTitle.Text = "";
            }
            else
            {
                Response.Write("<script>alert('修改失败！');</script>");
            }
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
}
