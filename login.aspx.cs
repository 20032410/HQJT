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


public partial class login : System.Web.UI.Page
{
    public static string title;
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
        if (Request.QueryString["id"] != null && Request.QueryString["id"] != "")
        {

            if (error.shuzi(Request.QueryString["id"].ToString()))
            {

                string sql = "select*from product where id=" + Request.QueryString["id"].ToString() + "";
                DataSet set = DBClass.GetTableData(sql, "sql");
                if (set.Tables["sql"].Rows.Count > 0)
                {
                   
                    title = set.Tables["sql"].Rows[0]["shopname"].ToString();
                                     
                }
            }
            else
            {
                Response.Redirect("error.html");
            }
        }
        else
        {
            Response.Redirect("error.html");
        }

    }
    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string diqu = Request["province"].ToString() + "" + Request["city"].ToString() + "" + Request["area"].ToString();
        string up = "insert into speak(shopname,username,phone,qq,tel,company,address,content,addtime)values('" + title + "','" + UserName.Value.ToString().Trim() + "','" + phone.Value.ToString().Trim() + "','" + qq.Value.ToString().Trim() + "','" + tel.Value.ToString().Trim() + "','" + company.Value.ToString().Trim() + "','" + diqu + "','" + comment.Value.ToString() + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "')";

        if (DBClass.OperatorCommand(up))
        {

            Response.Write("<script language=JavaScript>alert('成功！ ');;history.back();</Script>");
        }
        else
        {
            Response.Write("<script>alert('失败！')</script>");
        }


    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {


        {
            Response.Write("<script>this.location.href='login.aspx?id=" + Request.QueryString["id"].ToString() + "';</script>");
        }


    }

}
