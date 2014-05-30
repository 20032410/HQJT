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

public partial class uc_footer : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bind();
    }

    public void bind()
    {
        string sql = "select  * from send order by id asc";
        DataSet set = DBClass.GetTableData(sql, "sql");
        frdlink.DataSource = set;
        frdlink.DataBind();
    }
}
