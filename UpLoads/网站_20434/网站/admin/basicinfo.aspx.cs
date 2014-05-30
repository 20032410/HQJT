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

public partial class ccwl_admin_basicinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AdminCs.CheckLoginState();
        if (!this.IsPostBack)
        {
            
           
            string sql = "select * from basicinfo where id=1";
            DataSet set = DBClass.GetTableData(sql, "sql");
            tbxTitle.Text = set.Tables["sql"].Rows[0]["title"].ToString();
            tbxDescription.Text = set.Tables["sql"].Rows[0]["discription"].ToString();
            tbxKeywords.Text = set.Tables["sql"].Rows[0]["keywords"].ToString();
        
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string sql = "";
        sql = "update basicinfo set title='" + tbxTitle.Text.ToString().Trim() + "', discription='" + tbxDescription.Text.ToString().Trim() + "', keywords='" + tbxKeywords.Text.ToString().Trim() + "' where id=1";
        if (DBClass.OperatorCommand(sql))
        {
            Response.Write("<script>alert('网站基本信息更新成功！');</script>");
        }
        else Response.Write("<script>alert('网站基本信息更新失败！');</script>");
    }
   

}
