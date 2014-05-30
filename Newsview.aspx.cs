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

public partial class Newsview : System.Web.UI.Page
{
    public static string title, Bigname,addtime;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null && Request.QueryString["id"] != "")
        {

            if (error.shuzi(Request.QueryString["id"].ToString()))
            {
                string sqlT = "select * from addactive where id=" + Request.QueryString["id"].ToString() + "";
                DataSet setT = DBClass.GetTableData(sqlT, "sql");

                this.Page.Title = setT.Tables["sql"].Rows[0]["webtitle"].ToString();
                HtmlMeta child = new HtmlMeta();
                child.Name = "Description";
                child.Content = setT.Tables["sql"].Rows[0]["webkeyword"].ToString();
                this.Page.Header.Controls.Add(child);
                HtmlMeta meta2 = new HtmlMeta();
                meta2.Name = "keywords";
                meta2.Content = setT.Tables["sql"].Rows[0]["webdiscription"].ToString();
                this.Page.Header.Controls.Add(meta2);
                string up = "update addactive set pubCount=pubCount+1 where id=" + Request.QueryString["id"].ToString() + "";
                DBClass.OperatorCommand(up);
                string sql = "select*from addactive where id=" + Request.QueryString["id"].ToString() + "";
                DataSet set = DBClass.GetTableData(sql, "sql");
                if (set.Tables["sql"].Rows.Count > 0)
                {
                    title = set.Tables["sql"].Rows[0]["title"].ToString();
                    Bigname = types(set.Tables["sql"].Rows[0]["type"].ToString()).ToString();
                    addtime = set.Tables["sql"].Rows[0]["addtime"].ToString();
                    Literal1.Text = set.Tables["sql"].Rows[0]["content"].ToString();

                }
            }
            else
            {
                Response.Redirect("error.html");
            }
        }
        else
        {
            Response.Redirect("error.html");
        }

    }

    public string types(string id)
    {

        return Class1.OperatorCommandStr("select title from newstype where id=" + id + "");
    }
}
