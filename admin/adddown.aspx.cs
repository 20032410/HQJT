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
public partial class admin_adddown : System.Web.UI.Page
{
    DownClass p = new DownClass();


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
                    string sql = "select * from down where id=" + Request.QueryString["id"].ToString() + "";
                    DataSet set = DBClass.GetTableData(sql, "sql");
                    if (set.Tables["sql"].Rows.Count > 0)
                    {
                        DropDownList1.SelectedValue = set.Tables["sql"].Rows[0]["type"].ToString();
                        shopname.Text = set.Tables["sql"].Rows[0]["shopname"].ToString();
                        info.Text = set.Tables["sql"].Rows[0]["info"].ToString();
                        times.Text = set.Tables["sql"].Rows[0]["addtime"].ToString();
                        beizhu.Text = set.Tables["sql"].Rows[0]["content"].ToString();
                        txtProImg.Text = set.Tables["sql"].Rows[0]["images"].ToString();
                        txtProfile.Text = set.Tables["sql"].Rows[0]["downurl1"].ToString();
                        downurl2.Text = set.Tables["sql"].Rows[0]["downurl2"].ToString();
                        downurl3.Text = set.Tables["sql"].Rows[0]["downurl3"].ToString();
                         times.Text = set.Tables["sql"].Rows[0]["addtime"].ToString();


                       
                                  
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


        string realy = "insert into down(type,shopname,images,downurl1,downurl2,downurl3,info,content,addtime)values(" + DropDownList1.SelectedValue + ",'" + shopname.Text + "','" + txtProImg.Text.ToString() + "','" + txtProfile.Text.ToString() + "','" + downurl2.Text.ToString() + "','" + downurl3.Text.ToString() + "','" + info.Text.ToString() + "','" + beizhu.Text.ToString().Replace("'", "‘") + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "')";
        if (DownClass.OperatorCommand(realy))
        {
            Response.Write("<script>alert('添加成功！');this.location.href='down.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('添加失败！')</script>");
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {


        string realy = "update down set  type=" + DropDownList1.SelectedValue + ",  shopname='" + shopname.Text + "',images='" + txtProImg.Text.ToString() + "',downurl1='" + txtProfile.Text.ToString() + "',downurl2='" + downurl2.Text.Trim() + "',downurl3='" + downurl3.Text.Trim() + "',info='" + info.Text.Trim() + "',content='" + beizhu.Text.ToString().Replace("'", "’") + "',addtime='" + times.Text.Trim() + "'where id=" + Request.QueryString["id"].ToString() + " ";
        if (DownClass.OperatorCommand(realy))
        {
            Response.Write("<script>alert('修改成功！');this.location.href='down.aspx'</script>");
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

    protected void Upfile_Click(object sender, EventArgs e)//上传图片
    {
        if (FileUpload2.PostedFile.ContentLength < 200000000)//10000000为100K
        {

            string fileFullname = this.FileUpload2.FileName;
            string dataName = DateTime.Now.ToString("yyyyMMddhhmmss");
            string fileName = fileFullname.Substring(fileFullname.LastIndexOf("\\") + 1);
            string type = fileFullname.Substring(fileFullname.LastIndexOf(".") + 1);
            if (type == "rar" || type == "zip" || type == "7z" || type == "pdf" || type == "doc" || type == "exc")
            {
                this.FileUpload2.SaveAs(Server.MapPath("UpFile") + "\\" + dataName + "." + type);
                string Profile = "UpFile/" + dataName + "." + type;
                this.txtProfile.Text = "UpFile/" + dataName + "." + type;
            }
            else
            {
                Response.Write("<script language='javascript'>alert('支持格式：|rar|zip|7z|pdf|doc|exc|');</script>");
            }
        }
        else
        {
            Response.Write("<script language='javascript'>alert('你的文件已经超过20M的大小！');</script>");
        }
    }
}
