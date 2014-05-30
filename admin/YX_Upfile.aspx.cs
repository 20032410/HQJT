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
using System.Data.SqlClient;
public partial class Admin_Ad_YX_Upfile3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        if (FileUpload3.PostedFile != null)
        {
            string Url = "UpFile/";
            string filename;//文件名字
            string hz;
            string newname;
            filename = FileUpload3.FileName;
            //取后最
            int pos = filename.IndexOf(".");
            hz = filename.Substring((pos + 1)).ToLower();

            if (hz != "gif" && hz != "jpg" && hz != "jpeg" && hz != "bmp" && hz != "png")
            {
                Response.Write("<script>alert('图片只支持－－－gif|jpg|jpeg|bmp|png');location.href='YX_Upfile.aspx';</script>");
                Response.End();
            }
            newname = sjname() + "." + hz;
            //保存图片
            string pathurl;
            pathurl = Server.MapPath("~") + "\\UpFile\\" + newname;
            string kb = FileUpload3.FileContent.Length.ToString();
            FileUpload3.PostedFile.SaveAs(pathurl);
            Response.Write("<script>parent.document.Form1.imgUrl.value+='|" + Url + newname + "';</script>");
            // FileUpload1.SaveAs(pathurl);


        }
    }
    /// <summary>
    /// 产生个随即名称
    /// </summary>
    /// <returns></returns>
    public string sjname()
    {

        string sj = null;
        sj = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.TimeOfDay.Hours.ToString() + DateTime.Now.TimeOfDay.Minutes.ToString() + DateTime.Now.TimeOfDay.Milliseconds.ToString();
        return sj;


    }
}
