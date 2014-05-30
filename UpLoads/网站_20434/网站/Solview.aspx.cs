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

public partial class Solview : System.Web.UI.Page
{
    public static string title, addtime;
    protected void Page_Init(object sender, EventArgs e)
    {
        string sql = "select * from basicinfo where id=1";
        DataSet set = DBClass.GetTableData(sql, "sql");

        this.Page.Title = set.Tables["sql"].Rows[0]["title"].ToString();
        HtmlMeta child = new HtmlMeta();
        child.Name = "Description";
        child.Content = set.Tables["sql"].Rows[0]["discription"].ToString();
        this.Page.Header.Controls.Add(child);
        HtmlMeta meta2 = new HtmlMeta();
        meta2.Name = "keywords";
        meta2.Content = set.Tables["sql"].Rows[0]["keywords"].ToString();
        this.Page.Header.Controls.Add(meta2);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null && Request.QueryString["id"] != "")
        {

            if (error.shuzi(Request.QueryString["id"].ToString()))
            {

                string up = "update solution set hits=hits+1 where id=" + Request.QueryString["id"].ToString() + "";
                DBClass.OperatorCommand(up);
                string sql = "select*from solution where id=" + Request.QueryString["id"].ToString() + "";
                DataSet set = DBClass.GetTableData(sql, "sql");
                if (set.Tables["sql"].Rows.Count > 0)
                {
                    title = set.Tables["sql"].Rows[0]["shopname"].ToString();
                    addtime = set.Tables["sql"].Rows[0]["addtime"].ToString();
                    Literal1.Text = set.Tables["sql"].Rows[0]["content"].ToString();

                }
            }
            else
            {
                Response.Redirect("error.htm");
            }
        }
        else
        {
            Response.Redirect("error.htm");
        }

    }

}
