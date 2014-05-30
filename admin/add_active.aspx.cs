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

public partial class admin_add_mcar : System.Web.UI.Page
{
     
    protected void Page_Load(object sender, EventArgs e)
    {
      AdminCs.CheckLoginState();
        if (!IsPostBack)
        {
             
            
            if (Request["id"] != null)
            {
                string sql = "select * from active where id=" + Request["id"].ToString() + "";
                DataSet set = DBClass.GetTableData(sql, "sql");
                TextBox1.Text= set.Tables["sql"].Rows[0]["title"].ToString();
                beizhu.Text = set.Tables["sql"].Rows[0]["content"].ToString();
                Button2.Visible = true;
                TextBox2.Text = set.Tables["sql"].Rows[0]["times"].ToString();
                Button1.Visible = false;
            }
            else
            {
                TextBox2.Text = DateTime.Now.ToString("yyyy-MM-dd");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        string sql = "insert into active(title,content,type,times) values('" + TextBox1.Text + "','" + beizhu.Text.ToString().Replace("'", "‘") + "'," + Request.QueryString["type"].ToString() + ",'" + TextBox2.Text.ToString() + "')";
           if (DBClass.OperatorCommand(sql))
            {
                Response.Redirect("showactive.aspx?type=" + Request.QueryString["type"].ToString() + "");
            }
            else
            {

                Response.Write("<script>alert('添加失败！')</script>");
            }
        
    }
    
    protected void Button2_Click1(object sender, EventArgs e)
    {

        string sql = "update active set title='" + TextBox1.Text + "',times='" + TextBox2.Text.ToString() + "',content='" + beizhu.Text.ToString().Replace("'", "‘") + "'   where id=" + Request["id"].ToString() + "";
        if (DBClass.OperatorCommand(sql))
            {
                Response.Redirect("showactive.aspx?type=" + Request["type"].ToString() + "");
            }
            else
            {
                Response.Write("<script>alert('修改失败！')</script>");
            }
        
    }
  
    
}
