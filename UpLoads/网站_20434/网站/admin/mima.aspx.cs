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

public partial class mima : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AdminCs.CheckLoginState();
        if (!IsPostBack)
        {
            
            string sql = "select * from admin where id=" + Request.QueryString["userId"];
            DataSet set = DBClass.GetTableData(sql, "ad");
            if (set.Tables["ad"].Rows.Count > 0)
            {
                lblUserName.Text = set.Tables["ad"].Rows[0]["userName"].ToString();
            }
        }
    }


   
    



    protected void Button2_Click(object sender, EventArgs e)
    {
        
        pass.Text = "";
        pass2.Text = "";
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {


        string sql = "update admin set password='" + StringClass.Encrypt(pass2.Text.Trim(), "yx139222") + "' where id=" + Request.QueryString["userId"];
        if (DBClass.OperatorCommand(sql))
        {
            Response.Write("<script>alert('更新成功！');window.location='addadmin.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('更新失败！');javascript:history.back(-1);</script>");
        }
      }
        
    }

