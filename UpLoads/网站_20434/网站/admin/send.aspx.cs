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

public partial class admin_send : System.Web.UI.Page
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
        string sql = "delete from send where id=" + GridView1.DataKeys[e.RowIndex].Value + "";
        DBClass.OperatorCommand(sql);
        GridView1.EditIndex = -1;
        bind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox box = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
        TextBox boxs = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
        string sql = "";

        sql = "update  send set username='" + box.Text + "', [moneys]='" + boxs.Text.ToString() + "'   where id=" + GridView1.DataKeys[e.RowIndex].Value + "";

        DBClass.OperatorCommand(sql);
        GridView1.EditIndex = -1;
        bind();
    }
    public void bind()
    {
        try
        {
            string sql = "select*from send";
            DataSet set = DBClass.GetTableData(sql, "sql");
            GridView1.DataSource = set;
            GridView1.DataBind();
        }
        catch (Exception f)
        {
            error.alter(f.Message);
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        bind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        adname.Text = "";
        pass.Text = "";
        
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "insert into send(username,[moneys]) values ('" + adname.Text + "','" + pass.Text.Trim() + "')";
        if (DBClass.OperatorCommand(sql))
        {
            bind();
            Response.Write("<script>alert('添加成功！')</script>");
        }
        else
        {

            Response.Write("<script>alert('添加失败！')</script>");
        }
    }
}
