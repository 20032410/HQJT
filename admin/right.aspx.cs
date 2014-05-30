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
using System.Runtime.InteropServices;
using System.Threading;
using System.Data.SqlClient;
public partial class ccwl_admin_asp : System.Web.UI.Page
{
    [DllImport("kernel32")]
    public static extern void GlobalMemoryStatus(ref MEMORY_INFO meminfo);

    //定义内存的信息结构
    [StructLayout(LayoutKind.Sequential)]
    public struct MEMORY_INFO
    {
        public uint dwLength;
        public uint dwMemoryLoad;
        public uint dwTotalPhys;
        public uint dwAvailPhys;
        public uint dwTotalPageFile;
        public uint dwAvailPageFile;
        public uint dwTotalVirtual;
        public uint dwAvailVirtual;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Expires = 0;
        Response.CacheControl = "no-cache";
        if (!(IsPostBack))
        {
            TimeSpan stime = DateTime.Now.TimeOfDay;
            servername.Text = Server.MachineName;
            serverms.Text = Environment.OSVersion.ToString();
            serverip.Text = Request.ServerVariables["LOCAL_ADDR"];
            server_name.Text = Request.ServerVariables["http_host"];
            serversoft.Text = Request.ServerVariables["server_software"];
            servernet.Text = Environment.Version.Major + "." + Environment.Version.Minor + "." + Environment.Version.Build + "." + Environment.Version.Revision;
            serverhttps.Text = Request.ServerVariables["HTTPS"];
            serverport.Text = Request.ServerVariables["server_port"];
            serverout.Text = Server.ScriptTimeout.ToString();
            servertime.Text = DateTime.Now.ToString();
            serverarea.Text = (DateTime.Now - DateTime.UtcNow).TotalHours > 0 ? "+" + (DateTime.Now - DateTime.UtcNow).TotalHours.ToString() : (DateTime.Now - DateTime.UtcNow).TotalHours.ToString();
            try
            {
                aspnetn.Text = (System.Diagnostics.Process.GetCurrentProcess().WorkingSet / 1048576).ToString("N2") + " MB";
            }
            catch
            {
                aspnetn.Text = "系统拒绝提供。";
            }
            try
            {
                aspnetcpu.Text = (System.Diagnostics.Process.GetCurrentProcess().TotalProcessorTime).TotalSeconds.ToString("N0") + " 秒";
            }
            catch
            {
                aspnetcpu.Text = "系统拒绝提供。";
            }
            serverstart.Text = (System.Environment.TickCount / 3600000).ToString("N2");
            try
            {
                prstart.Text = System.Diagnostics.Process.GetCurrentProcess().StartTime.ToString();
            }
            catch
            {
                prstart.Text = "系统拒绝提供。";
            }
            cpuc.Text = Environment.GetEnvironmentVariable("NUMBER_OF_PROCESSORS");
            cputype.Text = Environment.GetEnvironmentVariable("PROCESSOR_IDENTIFIER");

            //调用GlobalMemoryStatus函数获取内存的相关信息
            MEMORY_INFO MemInfo;
            MemInfo = new MEMORY_INFO();
            GlobalMemoryStatus(ref MemInfo);
            LbdwMemoryLoad.Text = MemInfo.dwMemoryLoad + " %";
            LbdwTotalPhys.Text = dFileSize(MemInfo.dwTotalPhys);
            LbdwAvailPhys.Text = dFileSize(MemInfo.dwAvailPhys);
            LbdwTotalPageFile.Text = dFileSize(MemInfo.dwTotalPageFile);
            LbdwAvailPageFile.Text = dFileSize(MemInfo.dwAvailPageFile);
            LbdwTotalVirtual.Text = dFileSize(MemInfo.dwTotalVirtual);


            serverppath.Text = Request.ServerVariables["APPL_PHYSICAL_PATH"];
            servernpath.Text = Request.ServerVariables["path_translated"];
            servers.Text = Session.Contents.Count.ToString();
            servera.Text = Application.Contents.Count.ToString();
            TimeSpan etime = DateTime.Now.TimeOfDay;
            TimeSpan t = etime.Subtract(stime);
            runtime.Text = t.TotalMilliseconds.ToString();
        }
    }

    private static string dFileSize(double FileSize)
    {

        if (FileSize < 1024)
        {
            return FileSize + " B";
        }
        else if ((FileSize < 1024 * 1024))
        {

            return Math.Round((FileSize / 1024), 2) + " KB";
        }
        else
        {

            return Math.Round(FileSize / (1024 * 1024), 2) + " MB";
        }
    }
   
   
}
