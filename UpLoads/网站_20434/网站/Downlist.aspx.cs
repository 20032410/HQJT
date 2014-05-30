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

public partial class Downlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }
    public void bind()
    {
        string sql = "";
        string type = Request.QueryString["type"];

        if (type != null && type != "")
        {
            sql = "select * from Down where type=" + Request.QueryString["type"].ToString() + " order by id desc";
        }
        else
        {
            sql = "select *  from Down  order by id desc";
        }
        if (type != null && type != "")
        {
            string sqls = "select  count(*) from Down where  type=" + Request.QueryString["type"].ToString() + "  ";
            DBClass.bindRE(sqls, sql, "sql", AspNetPager1, Repeater1);
        }
        else
        {
            string sqls = "select  count(*) from Down";
            DBClass.bindRE(sqls, sql, "sql", AspNetPager1, Repeater1);
        }
    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        bind();

    }



}
