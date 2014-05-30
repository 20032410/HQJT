using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;
using System.Collections.Specialized;
namespace SqlIn
{
    /// <summary>
    /// SqlInPost 的摘要说明
    /// </summary>
    public class SqlInPost : IHttpHandlerFactory
    {
        public SqlInPost()
        {
            //
            // TODO: 在此处添加构造函数逻辑
            //
        }
        public virtual IHttpHandler GetHandler(HttpContext context, string requestType, string url, string pathTranslated)
        {
            //得到编译实例(通过反射)
            PageHandlerFactory factory = (PageHandlerFactory)Activator.CreateInstance(typeof(PageHandlerFactory), true);
            IHttpHandler handler = factory.GetHandler(context, requestType, url, pathTranslated);
            //过滤字符串
            if (requestType == "POST")
            {
                Page page = handler as Page;
                if (page != null)
                    page.PreLoad += new EventHandler(FilterStrFactoryHandler_PreLoad);
            }
            if (requestType == "GET")
            {
                Page page = handler as Page;
                if (page != null)
                    page.PreLoad += new EventHandler(FilterStrFactoryHandler_PreLoad1);
            }
            //返回
            return handler;
        }
        //过滤TextBox、Input和Textarea中的特殊字符
        void FilterStrFactoryHandler_PreLoad(object sender, EventArgs e)
        {
            try
            {
                Page page = sender as Page;
                NameValueCollection postData = page.Request.Form;
                foreach (string postKey in postData)
                {
                    Control ctl = page.FindControl(postKey);
                    if (ctl as TextBox != null)
                    {
                        ((TextBox)ctl).Text = Common.InputText(((TextBox)ctl).Text);
                        continue;
                    }
                    if (ctl as HtmlInputControl != null)
                    {
                        ((HtmlInputControl)ctl).Value = Common.InputText(((HtmlInputControl)ctl).Value);
                        continue;
                    }
                    if (ctl as HtmlTextArea != null)
                    {
                        ((HtmlTextArea)ctl).Value = Common.InputText(((HtmlTextArea)ctl).Value);
                        continue;
                    }
                }
            }
            catch { }
        }
        //过滤QueryString
        void FilterStrFactoryHandler_PreLoad1(object sender, EventArgs e)
        {
            try
            {
                Page page = sender as Page;
                NameValueCollection QueryNV = page.Request.QueryString;
                bool isSafe = true;
                for (int i = 0; i < QueryNV.Count; i++)
                {
                    if (!IsSafeString(QueryNV.Get(i)))
                    {
                        isSafe = false;
                        break;
                    }
                }
                if (!isSafe)
                {
                    page.Response.Write("非法传值!");
                    page.Response.End();
                }
            }
            catch { }
        }
        public virtual void ReleaseHandler(IHttpHandler handler)
        {
        }
        //判断是否为安全字符串
        public bool IsSafeString(string p)
        {
            bool ret = true;
            string[] UnSafeArray = new string[22];
            UnSafeArray[0] = "'";
            UnSafeArray[1] = "xp_cmdshell";
            UnSafeArray[2] = "exec master.dbo.xp_cmdshell";
            UnSafeArray[3] = "net localgroup administrators";
            UnSafeArray[4] = "delete from";
            UnSafeArray[5] = "net user";
            UnSafeArray[6] = "/add";
            UnSafeArray[7] = "drop table";
            UnSafeArray[8] = "update ";
            UnSafeArray[9] = "select";
            UnSafeArray[10] = ";and";
            UnSafeArray[11] = ";exec";
            UnSafeArray[12] = ";create";
            UnSafeArray[13] = ";insert";
            UnSafeArray[14] = "delete";
            UnSafeArray[15] = "exec";
            UnSafeArray[16] = "create";
            UnSafeArray[17] = "insert";
            UnSafeArray[18] = "master.dbo";
            UnSafeArray[19] = ";--";
            UnSafeArray[20] = "--";
            UnSafeArray[21] = "1=";
            foreach (string s in UnSafeArray)
            {
                if (p.ToLower().IndexOf(s) > -1)
                {
                    ret = false;
                    break;
                }
            }
            return ret;
        }
    }
    public class Common
    {
        public static string InputText(string text)
        {
            text = text.Trim();
            if (string.IsNullOrEmpty(text))
            return string.Empty;
            text = Regex.Replace(text, "[\\s]{2,}", " "); //two or more spaces
            text = Regex.Replace(text, "(<[b|B][r|R]/*>)+|(<[p|P](.|\\n)*?>)", "\n"); //<br>
            text = Regex.Replace(text, "(\\s*&[n|N][b|B][s|S][p|P];\\s*)+", " "); //&nbsp;
            text = Regex.Replace(text, "<(.|\\n)*?>", string.Empty); //any other tags
            text = text.Replace("'", "''");
            text = text.Replace("xp_cmdshell", "");
            text = text.Replace("exec master.dbo.xp_cmdshell", "");
            text = text.Replace("net localgroup administrators", "");
            text = text.Replace("delete from", "");
            text = text.Replace("net user", "");
            text = text.Replace("/add", "");
            text = text.Replace("drop table", "");
            text = text.Replace("update", "");
            return text;
        }
    }
}
