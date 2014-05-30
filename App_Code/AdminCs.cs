using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
/// <summary>
/// AdminCs 的摘要说明
/// </summary>

public class AdminCs
{
	public AdminCs()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    /// <summary>
    /// 检查登录状态
    /// </summary>
    public static void CheckLoginState()
    {
        if (HttpContext.Current.Session["users"] == null)
        {
            HttpContext.Current.Response.Write("<script>alert('对不起您还没有登陆！');this.location.href='login.aspx'</script></script>");
        }
    }
    
}
