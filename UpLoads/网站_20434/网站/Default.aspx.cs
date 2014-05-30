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


public partial class _Default : System.Web.UI.Page
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
        string sql1 = "select top 7 * from addactive order by id desc";
        DataSet set1 = DBClass.GetTableData(sql1, "sql");
        Repeater1.DataSource = set1;
        Repeater1.DataBind();

        string sql2 = "select top 1 * from product where type=1 and  first=1 order by id desc";
        DataSet set2 = DBClass.GetTableData(sql2, "sql");
        Repeater2.DataSource = set2;
        Repeater2.DataBind();

        string sql5 = "select top 4 * from product where type=1 and  first=1 order by id desc";
        DataSet set5 = DBClass.GetTableData(sql5, "sql");
        Repeater5.DataSource = set5;
        Repeater5.DataBind();

        string sqly = "select top 1 * from product where type=6 and  first=1 order by id desc";
        DataSet sety = DBClass.GetTableData(sqly, "sql");
        Repeatery.DataSource = sety;
        Repeatery.DataBind();

        string sql6 = "select top 4 * from product where type=6 and  first=1 order by id desc";
        DataSet set6 = DBClass.GetTableData(sql6, "sql");
        Repeater6.DataSource = set6;
        Repeater6.DataBind();

        string sqli = "select top 1 * from product where type=3 and  first=1 order by id desc";
        DataSet seti = DBClass.GetTableData(sqli, "sql");
        Repeateri.DataSource = seti;
        Repeateri.DataBind();

        string sql7 = "select top 4 * from product where type=3 and  first=1 order by id desc";
        DataSet set7 = DBClass.GetTableData(sql7, "sql");
        Repeater7.DataSource = set7;
        Repeater7.DataBind();

        string sqlc = "select top 1 * from product where type=8 and  first=1 order by id desc";
        DataSet setc = DBClass.GetTableData(sqlc, "sql");
        Repeaterc.DataSource = setc;
        Repeaterc.DataBind();

        string sql8 = "select top 4 * from product where type=8 and  first=1 order by id desc";
        DataSet set8 = DBClass.GetTableData(sql8, "sql");
        Repeater8.DataSource = set8;
        Repeater8.DataBind();

        string sql = "select top 4  * from solutiontype where parent_id=0";
        DataSet set = DBClass.GetTableData(sql, "sql");
        rptbig.DataSource = set;
        rptbig.DataBind();

        string sqln = "select top 4  * from newstype where parent_id=0";
        DataSet setn = DBClass.GetTableData(sqln, "sql");
        rptbign.DataSource = setn;
        rptbign.DataBind();

        string sql3 = "select top 4 * from active where type=2 order by id asc";
        DataSet set3 = DBClass.GetTableData(sql3, "sql");
        Repeater3.DataSource = set3;
        Repeater3.DataBind();

        string sql4 = "select top 4 * from project where first=1 order by id desc";
        DataSet set4 = DBClass.GetTableData(sql4, "sql");
        Repeater4.DataSource = set4;
        Repeater4.DataBind();


    }
    public DataSet bindsmall(int id)
    {
        string sql = "select  * from solution where type=" + id + " and first=1 order by id desc";
        DataSet set = DBClass.GetTableData(sql, "sql");
        return set;
    }

    public DataSet bindsmalln(int id)
    {
        string sql = "select  * from addactive where type=" + id + " order by id desc";
        DataSet set = DBClass.GetTableData(sql, "sql");
        return set;
    }

}
