using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

/// <summary>
/// Class1 的摘要说明
/// </summary>
public class Class1
{
	public Class1()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public static readonly string connString = ConfigurationManager.AppSettings["ConnectionString"];
    public static DataSet GetTableData(string sql, string tablename)
    {
        try
        {

            SqlConnection con = new SqlConnection(connString);
            SqlDataAdapter Sdr = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            Sdr.Fill(ds, tablename);
            return ds;
        }
        catch { return null; }
    }

    public static bool OperatorCommand(string sql)
    {
        try
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand com = new SqlCommand(sql, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            return true;
        }
        catch { return false; }
    }

    public static string OperatorCommandStr(string sql)
    {
        string str = null;
        try
        {
            SqlConnection con = new SqlConnection(connString);
            SqlCommand com = new SqlCommand(sql, con);
            con.Open();
            str = com.ExecuteScalar().ToString();
            con.Close();
            return str;
        }
        catch { return null; }
    }

    //更新
    public static bool ExecuteNonQuery(string connString, string str)
    {
        SqlCommand cmd = new SqlCommand(str);
        using (SqlConnection conn = new SqlConnection(connString))
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            try
            {
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }

    //修改数据
    public static int UpdateData(string sql)
    {
        SqlConnection con = new SqlConnection(connString);
        con.Open();
        SqlCommand command = new SqlCommand(sql, con);

        int result = (int)command.ExecuteNonQuery();
        con.Close();

        return result;
    }

    //返回一个DataReader
    public static SqlDataReader ExecuteReader(string connString, string str)
    {
        SqlConnection conn = new SqlConnection(connString);
        try
        {
            //判断连接是否打开
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand(str, conn);
            SqlDataReader da = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return da;


        }
        catch
        {
            conn.Close();
            throw;
        }
        finally
        {

        }
    }

    

    public static string ExecuteScalar(string connString, string str)
    {
        SqlCommand com = new SqlCommand(str);
        using (SqlConnection conn = new SqlConnection(connString))
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            com.Connection = conn;
            try
            {
                string i = com.ExecuteScalar().ToString();
                com.Dispose();
                return i;
            }
            catch
            {
                return String.Empty;
            }

        }
    }

    public static int GetInt(string connString, string sqlstr)
    {
        SqlCommand cmd = new SqlCommand(sqlstr);
        using (SqlConnection conn = new SqlConnection(connString))
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }
            cmd.Connection = conn;
            int i = (int)cmd.ExecuteScalar();
            cmd.Dispose();
            return i;
        }

    }

    public static DataSet GetData(string connString, string sql)
    {
        try
        {

            SqlConnection con = new SqlConnection(connString);
            SqlDataAdapter Sdr = new SqlDataAdapter(sql, con);
            DataSet ds = new DataSet();
            Sdr.Fill(ds);
            return ds;
        }
        catch { return null; }
    }

   
}
