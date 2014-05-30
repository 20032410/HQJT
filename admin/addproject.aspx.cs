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
using System.IO;
using System.Text;
public partial class admin_addproject : System.Web.UI.Page
{
    ProjectClass p = new ProjectClass();


    protected void Page_Load(object sender, EventArgs e)
    {
        AdminCs.CheckLoginState();
        try
        {
            if (!IsPostBack)
            {
               
                p.type(DropDownList1, "0");
                   
            if (Request.QueryString["id"] != null)
                {


                    Button1.Visible = false;
                    Button2.Visible = true;
                    string sql = "select * from Project where id=" + Request.QueryString["id"].ToString() + "";
                    DataSet set = DBClass.GetTableData(sql, "sql");
                    if (set.Tables["sql"].Rows.Count > 0)
                    {
                        DropDownList1.SelectedValue = set.Tables["sql"].Rows[0]["type"].ToString();
                        shopname.Text = set.Tables["sql"].Rows[0]["shopname"].ToString();
                        info.Text = set.Tables["sql"].Rows[0]["info"].ToString();
                        times.Text = set.Tables["sql"].Rows[0]["addtime"].ToString();
                        beizhu.Text = set.Tables["sql"].Rows[0]["content"].ToString();
                        txtProImg.Text = set.Tables["sql"].Rows[0]["images"].ToString();
                       
                         times.Text = set.Tables["sql"].Rows[0]["addtime"].ToString();


                         if (set.Tables["sql"].Rows[0]["first"].ToString() == "1")
                        {
                            CheckBox1.Checked = true;
                        }
                        else
                        {
                            CheckBox1.Checked = false;
                        }
                                  
                    }

                }
                else
                {
                    times.Text = DateTime.Now.ToString("yyyy-MM-dd");
                }
            }
        }
        catch (Exception ex)
        {

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string first;
        if (this.CheckBox1.Checked)
        {
            first = "1";

        }
        else
        {

            first = "0";
        }


        string realy = "insert into Project(type,shopname,images,info,content,first,addtime)values(" + DropDownList1.SelectedValue + ",'" + shopname.Text + "','" + txtProImg.Text.ToString() + "','" + info.Text.ToString() + "','" + beizhu.Text.ToString().Replace("'", "‘") + "','" + first + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "')";
        if (ProjectClass.OperatorCommand(realy))
        {
            Response.Write("<script>alert('添加成功！');this.location.href='Project.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('添加失败！')</script>");
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string first;
        if (this.CheckBox1.Checked)
        {
            first = "1";

        }
        else
        {

            first = "0";
        }


        string realy = "update Project set  type=" + DropDownList1.SelectedValue + ",  shopname='" + shopname.Text + "',images='" + txtProImg.Text.ToString() + "',info='" + info.Text.Trim() + "',content='" + beizhu.Text.ToString().Replace("'", "’") + "', first=" + first + ",addtime='" + times.Text.Trim() + "'where id=" + Request.QueryString["id"].ToString() + " ";
        if (ProjectClass.OperatorCommand(realy))
        {
            Response.Write("<script>alert('修改成功！');this.location.href='Project.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('修改失败！')</script>");
        }
    }
    protected void UpImg_Click(object sender, EventArgs e)//上传图片
    {
        if (FileUpload1.PostedFile.ContentLength < 500000)//100000为100K
        {

            string fileFullname = this.FileUpload1.FileName;
            string dataName = DateTime.Now.ToString("yyyyMMddhhmmss");
            string fileName = fileFullname.Substring(fileFullname.LastIndexOf("\\") + 1);
            string type = fileFullname.Substring(fileFullname.LastIndexOf(".") + 1);
            if (type == "bmp" || type == "jpg" || type == "gif" || type == "JPG" || type == "BMP" || type == "GIF" || type == "png")
            {
                this.FileUpload1.SaveAs(Server.MapPath("UpImg") + "\\" + dataName + "." + type);
                string ProImg = "UpImg/" + dataName + "." + type;
                this.txtProImg.Text = "UpImg/" + dataName + "." + type;
            }
            else
            {
                Response.Write("<script language='javascript'>alert('支持格式：|jpg|gif|bmp|png|');</script>");
            }
        }
        else
        {
            Response.Write("<script language='javascript'>alert('你的图片已经超过500K的大小！');</script>");
        }
    }

    
}
