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

public partial class uc_top : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql1 = "select  * from solutiontype  where parent_id=0  order by p_value asc";
        DataSet set1 = DBClass.GetTableData(sql1, "sql");
        Repeater1.DataSource = set1;
        Repeater1.DataBind();

        string sql2 = "select  * from Newstype where parent_id=0  order by p_value asc";
        DataSet set2 = DBClass.GetTableData(sql2, "sql");
        Repeater2.DataSource = set2;
        Repeater2.DataBind();

        string sql3 = "select  * from Downtype where parent_id=0 order by p_value asc";
        DataSet set3 = DBClass.GetTableData(sql3, "sql");
        Repeater3.DataSource = set3;
        Repeater3.DataBind();

        string sql4 = "select  * from projecttype where parent_id=0 order by p_value asc";
        DataSet set4 = DBClass.GetTableData(sql4, "sql");
        Repeater4.DataSource = set4;
        Repeater4.DataBind();

  
    }
}
