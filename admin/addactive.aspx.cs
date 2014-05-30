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

public partial class ccwl_admin_addactive : System.Web.UI.Page
{
    NewsClass p = new NewsClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        AdminCs.CheckLoginState();
        if (!IsPostBack)
        {
            
            p.type(DropDownList1, "0");
            if (Request.QueryString["id"] != null)
            {
                Button1.Visible = false;
                Button2.Visible = true;
                string sql = "select*from addactive where   id=" + Request.QueryString["id"].ToString() + "";
                DataSet set = DBClass.GetTableData(sql, "sql");
                if (set.Tables["sql"].Rows.Count > 0)
                {
                    DropDownList1.SelectedValue = set.Tables["sql"].Rows[0]["type"].ToString();
                    webtitle.Text = set.Tables["sql"].Rows[0]["webtitle"].ToString();
                    webkeyword.Text = set.Tables["sql"].Rows[0]["webkeyword"].ToString();
                    webdiscription.Text = set.Tables["sql"].Rows[0]["webdiscription"].ToString();
                    Textbox1.Text = set.Tables["sql"].Rows[0]["title"].ToString();
                    
                    beizhu.Text = set.Tables["sql"].Rows[0]["content"].ToString();
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "insert into addactive (webtitle,webkeyword,webdiscription,type,title,content,addtime)values('" + webtitle.Text + "','" + webkeyword.Text + "','" + webdiscription.Text + "'," + DropDownList1.SelectedValue + ",'" + Textbox1.Text + "','" + beizhu.Text.ToString().Replace("'", "‘") + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "')";
        if (DBClass.OperatorCommand(sql))
        {
            Response.Redirect("active.aspx");
        }
        else
        {

            Response.Write("<script>alert('添加失败！')</script>");
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string sql = "update addactive set webtitle='" + webtitle.Text + "',webkeyword='" + webkeyword.Text + "',webdiscription='" + webdiscription.Text + "',type=" + DropDownList1.SelectedValue + ",title='" + Textbox1.Text + "',content='" + beizhu.Text.ToString().Replace("'", "‘") + "' where id=" + Request.QueryString["id"].ToString() + "";
        if (DBClass.OperatorCommand(sql))
        {
            Response.Redirect("active.aspx");
        }
        else
        {

            Response.Write("<script>alert('修改失败！')</script>");
        }

    
    }
}
