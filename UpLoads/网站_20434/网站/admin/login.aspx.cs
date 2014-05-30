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

public partial class ccwl_admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
      
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
      if (Request.Cookies["CheckCode"].Value ==safecode.Text.Trim().ToUpper())
      {
          
          string sql = "select*from admin where username='" + username.Text.Trim() + "' and password='" + StringClass.Encrypt(password.Text.Trim(), "yx139222") + "'";
          DataSet set = DBClass.GetTableData(sql, "admin");
          if (set != null && set.Tables["admin"].Rows.Count > 0)
        {
            
               Session["users"] = username.Text.Trim();
               Response.Redirect("index.aspx");
            }
            else
            {
                 Response.Write("<script>alert('姓名或密码输入错误！');javascript:history.back(-1);</script>");
            }
        } 
        else
        {
            Response.Write("<script>alert('验证码输入错误！');javascript:history.back(-1);</script>");
        }
    }
}
