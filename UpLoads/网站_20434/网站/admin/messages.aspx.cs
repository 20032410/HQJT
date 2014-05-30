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

public partial class ccwl_admin_messages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            AdminCs.CheckLoginState();
                      
            if (Request.QueryString["ids"] != null)
            {
                string sql = "select*from speak where id=" + Request.QueryString["ids"].ToString() + "";
                DataSet set = DBClass.GetTableData(sql,"sql");
                if (set.Tables["sql"].Rows.Count > 0)
                {
                     Label2.Text = set.Tables["sql"].Rows[0]["shopname"].ToString();
                     Label3.Text = set.Tables["sql"].Rows[0]["username"].ToString();
                     Label4.Text = set.Tables["sql"].Rows[0]["phone"].ToString();
                     Label5.Text = set.Tables["sql"].Rows[0]["qq"].ToString();
                     Label6.Text = set.Tables["sql"].Rows[0]["tel"].ToString();
                     Label7.Text = set.Tables["sql"].Rows[0]["company"].ToString();
                     Label8.Text = set.Tables["sql"].Rows[0]["address"].ToString();
                     Literal1.Text = set.Tables["sql"].Rows[0]["content"].ToString();
                  
                    
                }
                Panel1.Visible = true;
                GridView1.Visible = false;
                AspNetPager1.Visible = false;
            }
            else
            {
                bind();
            }
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sql = "delete from speak where id=" + GridView1.DataKeys[e.RowIndex].Value + "";
        DBClass.OperatorCommand(sql);
       
            bind();
         
    }
   
    public void bind()
    {

        string sql = "select * from speak   order by  id desc";
        string sql1 = "select count(*) from speak   ";
         DBClass.binddl(sql1, sql, "sql", AspNetPager1, GridView1);
         if (GridView1.Rows.Count == 0)
         {
             Label1.Visible = true;
         }
    }

    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        if (Request.QueryString["id"] != null)
        {
            bind();
        }
    }

  
}
