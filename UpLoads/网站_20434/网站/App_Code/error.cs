using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Globalization;
using System.Text.RegularExpressions;
using System.Diagnostics;
/// <summary>
/// error 的摘要说明
/// </summary>
public class error
{
	public error()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public static void writeerror(string errormessage)
    {
        try
        {
            string path =DateTime.Today.ToString("dd-mm-yy") + ".txt";
            if (!File.Exists(System.Web.HttpContext.Current.Server.MapPath(path)))
            {
                File.Create(System.Web.HttpContext.Current.Server.MapPath(path)).Close();
            }
            using (StreamWriter w = File.AppendText(System.Web.HttpContext.Current.Server.MapPath(path)))
            {
                w.WriteLine("\r\nlog entry : ");
                w.WriteLine("{0}", DateTime.Now.ToString(CultureInfo.InvariantCulture));
                string err = "error in: " + System.Web.HttpContext.Current.Request.Url.ToString() + ". error message:" + errormessage;
                 w.WriteLine(err);
                 w.WriteLine("__________________________");
                w.Flush();
                w.Close();
            }
        }
        catch (Exception ex)
        {
            writeerror(ex.Message);
        }
    }
    public static string titles()
    {
        return Class1.OperatorCommandStr("select content from information where type=10");
    }
    public static void alter(string message)
    {
        string js = "<Script language='JavaScript'>\r\nalert('" + message + "');</Script>";
        HttpContext.Current.Response.Write(js);

    }
    public  static string GetClientIP()
    {
        string result = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

        if (HttpContext.Current.Request.ServerVariables["HTTP_VIA"] != null) // using proxy
        {
            result = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();  // Return real client IP.
        }
        else// not using proxy or can't get the Client IP
        {
            result = HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"].ToString(); //While it can't get the Client IP, it will return proxy IP.
        }
        
      
        return result;
    }
  
  public static string GetCustomerMac(string IP) //para IP is the client's IP 
        { 
             string dirResults=""; 
　　 ProcessStartInfo psi = new ProcessStartInfo(); 
　　 Process proc = new Process(); 
　　 psi.FileName = "nbtstat"; 
　　 psi.RedirectStandardInput = false; 
　　 psi.RedirectStandardOutput = true; 
　　 psi.Arguments = "-A " + IP; 
　　 psi.UseShellExecute = false; 
　　 proc = Process.Start(psi); 
　　 dirResults = proc.StandardOutput.ReadToEnd(); 
　　 proc.WaitForExit(); 
　　 dirResults=dirResults.Replace("\r","").Replace("\n","").Replace("\t",""); 
　　 Regex reg=new Regex("Mac[ ]{0,}Address[ ]{0,}=[ ]{0,}(?<key>((.)*?)) __MAC",RegexOptions.IgnoreCase|RegexOptions.Compiled); 
　　 Match mc=reg.Match(dirResults+"__MAC");
       if (mc.Success)
       {
           return mc.Groups["key"].Value;
       }
       else
       {
           reg = new Regex("Host not found", RegexOptions.IgnoreCase | RegexOptions.Compiled);
           mc = reg.Match(dirResults);
           if (mc.Success)
           {
               return "Host not found!";
           }
           else
           {
               return "";
           }
       }
 
      }

    public static  bool shuzi(string number)
    {
        if (System.Text.RegularExpressions.Regex.IsMatch(number, @"^\d*$"))
        {
            return true;
        }
        else
        {
            return false;
        }

    }
    public static bool script(string number)
    {
        if (System.Text.RegularExpressions.Regex.IsMatch(number, @"<Script[\s\S]*?>([\s\S]*?)</Script>"))
        {
            return false;
        }
        else
        {
            return true;
        }

    }
}
