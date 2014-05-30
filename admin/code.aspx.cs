using System;  
using System.IO;  
using System.Drawing;  
using System.Drawing.Imaging;  
using System.Text;  
using System.Collections;  
using System.Web;  
using System.Web.UI;  
using System.Web.UI.WebControls;  
using System.Web.UI.WebControls.WebParts;  
using System.Web.UI.HtmlControls; 

public partial class code : System.Web.UI.Page
{
   protected void Page_Load(object sender, EventArgs e)  
   {
        string co = GenerateCheckCode();
       this.CreateCheckCodeImage(co);
       Session.Add("code", co);
   }
   private string GenerateCheckCode()
   {
       int number;
       char code;
       string checkCode = String.Empty;
     
       System.Random random = new Random();

       for (int i = 0; i < 4; i++)
       {
           number = random.Next();

           if (number % 2 == 0)
               code = (char)('0' + (char)(number % 10));
           else
               code = (char)('A' + (char)(number % 26));
        
           checkCode += code.ToString();
       }

       Response.Cookies.Add(new HttpCookie("CheckCode", checkCode));

       return checkCode;
   }

   private void CreateCheckCodeImage(string checkCode)
   {
       if (checkCode == null || checkCode.Trim() == String.Empty)
           return;
         Color[] color ={Color.Red,  Color.Green, Color.Orange,

      Color.Brown, Color.DarkBlue };

       //字体列表，用于验证码
         string[] fonts ={"Arial"};
         
       System.Drawing.Bitmap image = new System.Drawing.Bitmap((int)Math.Ceiling((checkCode.Length * 12.5)), 20);
       Graphics g = Graphics.FromImage(image);

       try
       {
           //生成随机生成器
           Random random = new Random();

           //清空图片背景色
           g.Clear(Color.White);
        
            

           Font font = new System.Drawing.Font(fonts[random.Next(fonts.Length)], 12, (System.Drawing.FontStyle.Bold| System.Drawing.FontStyle.Regular));
           System.Drawing.Drawing2D.LinearGradientBrush brush = new System.Drawing.Drawing2D.LinearGradientBrush(new Rectangle(0, 0, image.Width, image.Height), color[random.Next(color.Length)], color[random.Next(color.Length)], 1.2f, true);
           g.DrawString(checkCode, font, brush, 2, 2);
 

           //画图片的边框线
           g.DrawRectangle(new Pen(Color.Silver), 0, 0, image.Width - 1, image.Height - 1);

           System.IO.MemoryStream ms = new System.IO.MemoryStream();
           image.Save(ms, System.Drawing.Imaging.ImageFormat.Gif);
           Response.ClearContent();
           Response.ContentType = "image/Gif";
           Response.BinaryWrite(ms.ToArray());
       }
       finally
       {
           g.Dispose();
           image.Dispose();
       }
   }
}


