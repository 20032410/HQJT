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

public partial class admin_project_type : System.Web.UI.Page
{
    ProjectClass p = new ProjectClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        AdminCs.CheckLoginState();
        if (!IsPostBack)
        {
            
           
            if (Request["type"] != null)
            { 
               
                p.deletentype(Request["type"].ToString());
            }
            Literal1.Text = p.type(drop, "0");
            if (Request["id"] != null)
            {
                Panel1.Visible = false;
                drop.SelectedValue = Request["id"].ToString();
                Panel2.Visible = true;
            }
            if (Request["ids"] != null)
            {
                 
                Panel1.Visible = false;
                drop.SelectedValue = Request["parent"].ToString();
                Panel2.Visible = true;
                 Button1.Visible = false;
                Button2.Visible = true;
                p.updatetype(title, p_values, Request["ids"].ToString());
                
            }

        }
    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {

        bool realy = p.insertlei(title.Text, drop.SelectedValue, Request["parent_path"].ToString(), p_values.Text.Trim());
        if (realy)
        {
            Literal1.Text = p.type(drop, "0");
            Panel1.Visible = true;
            Panel2.Visible = false;
            Response.Write("<script>alert('添加成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('添加失败！')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        bool realy = p.updatetypes(title.Text,  drop.SelectedValue, p_values.Text, Request["ids"].ToString());
        if (realy)
        {
            Literal1.Text = p.type(drop, "0");
            Panel1.Visible = true;
            Panel2.Visible = false;
            Response.Write("<script>alert('修改成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('修改失败！')</script>");
        }
    }
 


    protected void Button5_Click(object sender, EventArgs e)
    {
        bool realy = p.insertlei(TextBox1.Text, "0", "0", p_values.Text.Trim());
            if (realy)
            {
                Literal1.Text = p.type(drop,"0");
                Response.Write("<script>alert('添加成功！');</script>");
            }
            else
            {
                Response.Write("<script>alert('添加失败！')</script>");
            }   
        　

    }
    
}
