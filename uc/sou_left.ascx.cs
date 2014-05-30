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

public partial class uc_sou_left : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["type"]))
        {
            this.selected = Request.QueryString["type"].ToString();
        }
        string sqlt = "select  * from Solutiontype where parent_id=0 order by p_value asc";
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
