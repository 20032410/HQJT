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

public partial class admin_showcar : System.Web.UI.Page
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
        string sql = "delete from Active where id=" + GridView1.DataKeys[e.RowIndex].Value + "";
        DBClass.OperatorCommand(sql);
        bind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

        GridView1.EditIndex = e.NewEditIndex;
        bind();
    }

    public void bind()
    {

        string sql = "select * from Active  where type=" + Request["type"].ToString() + "  order by  id desc";
        string sql1 = "select count(*) from Active  where type=" + Request["type"].ToString() + "";
        AspNetPager1.PageSize = 10;
        DBClass.binddl(sql1, sql, "sql", AspNetPager1, GridView1);

    }

    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        string sql = "select * from Active where type=" + Request["type"].ToString() + "  order by  id desc";
        string sql1 = "select count(*) from Active where type=" + Request["type"].ToString() + "         ";
        AspNetPager1.PageSize = 10;
        DBClass.binddl(sql1, sql, "sql", AspNetPager1, GridView1);
    }


}
