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

public partial class uc_inter_left : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["id"]))
        {
            this.selected = Request.QueryString["id"].ToString();
        }
        string sqlt = "select  * from product where type=3 order by ID desc";
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
