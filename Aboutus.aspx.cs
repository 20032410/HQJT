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

public partial class Aboutus : System.Web.UI.Page
{
    public static string title;
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
        if (!string.IsNullOrEmpty(Request.QueryString["id"]))
        {
            this.selected = Request.QueryString["id"].ToString();
        }
        bind();

        if (Request.QueryString["id"] != null && Request.QueryString["id"] != "")
        {
            string sqlT = "select * from active where id=" + Request.QueryString["id"].ToString() + "";
            DataSet setT = DBClass.GetTableData(sqlT, "sql");
            title = setT.Tables["sql"].Rows[0]["title"].ToString();
            Literal1.Text = setT.Tables["sql"].Rows[0]["content"].ToString();

        }

        else
        {
            string sqlT = "select top 1 * from active where type=2 order by id asc";
            DataSet setT = DBClass.GetTableData(sqlT, "sql");
            title = setT.Tables["sql"].Rows[0]["title"].ToString();
            Literal1.Text = setT.Tables["sql"].Rows[0]["content"].ToString();
        }
    }

    public void bind()
    {
        string sqlt = "select  * from active where type=2 order by id asc";
        DataSet sett = DBClass.GetTableData(sqlt, "sql");
        Repeater1.DataSource = sett;
        Repeater1.DataBind();
    }
    protected string selected = "";
    protected string getCss(string item)
    {
        if (this.selected == item)
        {
            return "hover";
        }
        return "";
    }
}
