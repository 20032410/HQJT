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

public partial class Planar : System.Web.UI.Page
{
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
        bind();

    }
    public void bind()
    {
        string sql = "select * from product where type=8 order by ID desc";
        string sqls = "select  count(*) from product product where type=8";
        DBClass.bindRE(sqls, sql, "sql", AspNetPager1, Repeater1);
    }
    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        bind();

    }


}
