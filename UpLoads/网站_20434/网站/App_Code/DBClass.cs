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
using Wuqi.Webdiyer;
using System.Text.RegularExpressions;
  /// <summary>
    /// DBClass 的摘要说明
    /// </summary>
    public class DBClass
    {
        public DBClass()
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
                con.Close();
                return ds;
            }
            catch { return null; }
        }
        public static string  script(string str)
        {
            str = Convert.ToString(str);
            if (str == null)
            {
                str = "";

            }
            string re = string.Empty;

            if (str != "")
            {
                re = Regex.Replace(str, @"<Script[\s\S]*?>([\s\S]*?)</Script>", "$1", RegexOptions.IgnoreCase);
                re = Regex.Replace(str, @"<script[\s\S]*?>([\s\S]*?)</script>", "$1", RegexOptions.IgnoreCase);
            }
            else
            {
                re = "";
            }
            return re;
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
        /// <summary>
        /// 带参数的插入、更新、删除
        /// </summary>
        /// <param name="sql">Sql语句,带参数(@name)的</param>
        /// <param name="para">SqlParameter[]参数数组,SqlParameter[] para = new SqlParameter[] {new SqlParameter("@name",ar.Name)}</param>
        public static bool ExecuteNonQueryCan(string sql, SqlParameter[] para)
        {
            try
            {
                SqlConnection con = new SqlConnection(connString);
                SqlCommand com = new SqlCommand(sql, con);
                for (int i = 0; i < para.Length; i++)
                {
                    SqlParameter p = para.GetValue(i) as SqlParameter;
                    com.Parameters.AddWithValue(p.ParameterName, p.Value);
                }
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                return true;
            }
            catch
            {
                return false;
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
        public static void binddl(string sql, string sql2, string sql3, AspNetPager aspnet, GridView  dl)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = connString;
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand(sql, conn);
            aspnet.RecordCount = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();

            SqlDataAdapter da = new SqlDataAdapter(sql2, conn);
            DataSet ds = new DataSet();
            da.Fill(ds, aspnet.PageSize * (aspnet.CurrentPageIndex - 1), aspnet.PageSize, sql3);
            dl.DataSource = ds.Tables[0];
            dl.DataBind();
            
        }
        public static void bindRE(string sql, string sql2, string sql3, AspNetPager aspnet, Repeater dl)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = connString;
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand(sql, conn);
            aspnet.RecordCount = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();

            SqlDataAdapter da = new SqlDataAdapter(sql2, conn);
            DataSet ds = new DataSet();
            da.Fill(ds, aspnet.PageSize * (aspnet.CurrentPageIndex - 1), aspnet.PageSize, sql3);
            dl.DataSource = ds.Tables[0];
            dl.DataBind();

        }
        public static void bindGV(string sql, string sql2, string sql3, AspNetPager aspnet, DataList dl)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = connString;
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlCommand cmd = new SqlCommand(sql, conn);
            aspnet.RecordCount = Convert.ToInt32(cmd.ExecuteScalar());
            conn.Close();

            SqlDataAdapter da = new SqlDataAdapter(sql2, conn);
            DataSet ds = new DataSet();
            da.Fill(ds, aspnet.PageSize * (aspnet.CurrentPageIndex - 1), aspnet.PageSize, sql3);
            dl.DataSource = ds.Tables[0];
            dl.DataBind();
            
        }

        public string type(DropDownList drop,string id)
        {
            string sqls = "select*from producdtype where parent_id="+id+"  order by p_value asc";
            string text = "";
            DataSet sets = DBClass.GetTableData(sqls, "sql");
            for (int i = 0; i < sets.Tables[0].Rows.Count; i++)
            {
                drop.Items.Add(new ListItem(sets.Tables["sql"].Rows[i]["title"].ToString(), sets.Tables["sql"].Rows[i]["id"].ToString()));

                text += "<tr onMouseOut=this.style.backgroundColor='' onMouseOver=this.style.backgroundColor='#DFE7F2'><td><img src='images/tree_folder4.gif'>" + sets.Tables["sql"].Rows[i]["title"].ToString() + " </td><td align=center><a href='book_type.aspx?parent=" + sets.Tables["sql"].Rows[i]["parent_id"].ToString() + "&ids=" + sets.Tables["sql"].Rows[i]["id"].ToString() + "'> 修改设置</a>   <a href='book_type.aspx?type=" + sets.Tables["sql"].Rows[i]["id"].ToString() + "'>删除</a></td></tr>";

                text += select(sets.Tables["sql"].Rows[i]["id"].ToString(), sets.Tables["sql"].Rows[i]["title"].ToString(), drop);

            }

            return text;
        }
        public string select(string id, string title, DropDownList drop)
        {
            string content1 = "";

            string sql = "select*from producdtype where parent_id=" + id + " order by p_value asc";
            DataSet set = DBClass.GetTableData(sql, "sql");
            for (int i = 0; i < set.Tables[0].Rows.Count; i++)
            {

                string Nbsp = null; //加空格的变量；
                int STM_Path = Convert.ToInt16(set.Tables["sql"].Rows[i]["parent_path"].ToString());//如果YX_ParentID不为０说明不是根元素，求出它是那层元素；
                for (int j = 0; j < STM_Path; j++)
                {
                    //每一层加4个空格；
                    Nbsp += "&nbsp;&nbsp;&nbsp;";

                }
                STM_Path = STM_Path + 1;
                content1 += "<tr  ><td>" + Nbsp + "<img src='images/tree_line2.gif'><img src='images/tree_folder3.gif'>" + set.Tables["sql"].Rows[i]["title"].ToString() + " </td><td align=center><a href='book_type.aspx?parent=" + set.Tables["sql"].Rows[i]["parent_id"].ToString() + "&ids=" + set.Tables["sql"].Rows[i]["id"].ToString() + "'> 修改设置</a>   <a href='book_type.aspx?type=" + set.Tables["sql"].Rows[i]["id"].ToString() + "'>删除</a></td></tr>";
                drop.Items.Add(new ListItem(System.Web.HttpUtility.HtmlDecode(Nbsp) + "├" + set.Tables["sql"].Rows[i]["title"].ToString(), set.Tables["sql"].Rows[i]["id"].ToString()));
                content1 += select(set.Tables["sql"].Rows[i]["id"].ToString(), set.Tables["sql"].Rows[i]["title"].ToString(), drop);

            }

            return content1;
        }
       
      
        public static void getlink(string id,Literal liter, Label lb)
        {
            string sql = "select*from producdtype where id="+id+"";
            DataSet set = DBClass.GetTableData(sql,"sql");
            if (set.Tables["sql"].Rows.Count > 0)
            {
                getlink(set.Tables["sql"].Rows[0]["parent_id"].ToString(), liter, lb);
                liter.Text += "<a href=\"product.aspx?id=" + set.Tables["sql"].Rows[0]["id"].ToString() + "\"  class=\"font_333333\">" + set.Tables["sql"].Rows[0]["title"].ToString() + "</a>>>";
                lb.Text = set.Tables["sql"].Rows[0]["title"].ToString();
               
            }
        }
        public string gettype(string id)
        {
            string sqls = "select*from producdtype where parent_id="+id+"  order by p_value asc";
            string text = "";
            DataSet sets = DBClass.GetTableData(sqls, "sql");
            for (int i = 0; i < sets.Tables[0].Rows.Count; i++)
            {
 
               text += selecttype(sets.Tables["sql"].Rows[i]["id"].ToString(), sets.Tables["sql"].Rows[i]["title"].ToString(), sets.Tables["sql"].Rows[i]["parent_path"].ToString());

            }

            return text;
        }
        public static string producttype(string id)
        {
            string content1 = "";
            string sql = "select*from producdtype where parent_id=" + id + " order by p_value asc";
            DataSet set = DBClass.GetTableData(sql, "sql");
            for (int i = 0; i < set.Tables[0].Rows.Count; i++)
            {
                    content1 += "type=" + set.Tables["sql"].Rows[i]["id"].ToString() + " or ";
                    content1 +=producttype(set.Tables["sql"].Rows[i]["id"].ToString());
                 
            }
            return content1;
        }
        public static string productitles(string id)
        {
            string content1 = "";
            string sql = "select*from producdtype where title like  '%" + id.Trim() + "%'  order by p_value asc";
            DataSet set = DBClass.GetTableData(sql, "sql");
            for (int i = 0; i < set.Tables[0].Rows.Count; i++)
            {
                content1 += "type=" + set.Tables["sql"].Rows[i]["id"].ToString() + " or ";
                content1 += productitle( set.Tables["sql"].Rows[i]["id"].ToString());

            }
            return content1;
        }
        public static string productitle(string id)
        {
            string content1 = "";
            string sql = "select*from producdtype where   parent_id=" + id + " order by p_value asc";
            DataSet set = DBClass.GetTableData(sql, "sql");
            for (int i = 0; i < set.Tables[0].Rows.Count; i++)
            {
                content1 += "type=" + set.Tables["sql"].Rows[i]["id"].ToString() + " or ";
                content1 += productitle(set.Tables["sql"].Rows[i]["id"].ToString());

            }
            return content1;
        }
        public static string productpath(string id)
        {
            string content1 = "";
            string sql = "select*from producdtype where parent_id=" + id + " order by p_value asc";
            DataSet set = DBClass.GetTableData(sql, "sql");
            for (int i = 0; i < set.Tables[0].Rows.Count; i++)
            {
                content1 += "type=" + set.Tables["sql"].Rows[i]["parent_path"].ToString() + " or ";
                content1 += productpath(set.Tables["sql"].Rows[i]["id"].ToString());

            }
            return content1;
        }
        public string selecttype(string id, string title,string path)
        {
            string content1 = "";

            string sql = "select*from producdtype where parent_id=" + id + " order by p_value asc";
            DataSet set = DBClass.GetTableData(sql, "sql");
            if (set.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < set.Tables[0].Rows.Count; i++)
                {
                    if (set.Tables["sql"].Rows[i]["parent_path"].ToString().Contains("2"))
                    {
                        content1 += "<a href='product.aspx?id=" + set.Tables["sql"].Rows[i]["id"].ToString() + "'>" + set.Tables["sql"].Rows[i]["title"].ToString() + " </a>";
                        content1 += selecttype(set.Tables["sql"].Rows[i]["id"].ToString(), set.Tables["sql"].Rows[i]["title"].ToString(), set.Tables["sql"].Rows[i]["parent_path"].ToString());
                    }
                }
            }
            else
            {
                if (path.Contains("1"))
                {
                    content1 += "<a href='product.aspx?id=" + id + "'>" + title + " </a>";
                }
            }

            return content1;
        }
        public string types(DropDownList drop,string type)
        {
            string sqls = "select*from producdtype where id=" + type + "";
            string text = "";
            DataSet sets = DBClass.GetTableData(sqls, "sql");
            for (int i = 0; i < sets.Tables[0].Rows.Count; i++)
            {
                drop.Items.Add(new ListItem(sets.Tables["sql"].Rows[i]["title"].ToString(), sets.Tables["sql"].Rows[i]["id"].ToString()));
                if (sets.Tables["sql"].Rows[i]["allow"].ToString().Contains("0"))
                {
                    text += "<tr><td><img src='images/tree_folder4.gif'>" + sets.Tables["sql"].Rows[i]["title"].ToString() + " </td><td align=center><a href='book_type.aspx?parent=" + sets.Tables["sql"].Rows[i]["parent_id"].ToString() + "&ids=" + sets.Tables["sql"].Rows[i]["id"].ToString() + "'> 修改设置</a> </td></tr>";
                }
                else
                {
                    text += "<tr><td><img src='images/tree_folder4.gif'>" + sets.Tables["sql"].Rows[i]["title"].ToString() + " </td><td align=center><a href='book_type.aspx?parent=" + sets.Tables["sql"].Rows[i]["parent_id"].ToString() + "&ids=" + sets.Tables["sql"].Rows[i]["id"].ToString() + "'> 修改设置</a>   <a href='book_type.aspx?type=" + sets.Tables["sql"].Rows[i]["id"].ToString() + "'>删除</a></td></tr>";
                }
                text += selects(sets.Tables["sql"].Rows[i]["id"].ToString(), sets.Tables["sql"].Rows[i]["title"].ToString(), drop);

            }

            return text;
        }
        public string selects(string id, string title, DropDownList drop)
        {
            string content1 = "";

            string sql = "select*from producdtype where parent_id=" + id + "";
            DataSet set = DBClass.GetTableData(sql, "sql");
            for (int i = 0; i < set.Tables[0].Rows.Count; i++)
            {

                string Nbsp = null; //加空格的变量；
                int STM_Path = Convert.ToInt16(set.Tables["sql"].Rows[i]["parent_path"].ToString());//如果YX_ParentID不为０说明不是根元素，求出它是那层元素；
                for (int j = 0; j < STM_Path; j++)
                {
                    //每一层加3个空格；
                    Nbsp += "&nbsp;&nbsp;&nbsp;";

                }
                STM_Path = STM_Path + 1;
                content1 += "<tr><td>" + Nbsp + "<img src='images/tree_line2.gif'><img src='images/tree_folder3.gif'>" + set.Tables["sql"].Rows[i]["title"].ToString() + " </td><td align=center><a href='book_type.aspx?parent=" + set.Tables["sql"].Rows[i]["parent_id"].ToString() + "&ids=" + set.Tables["sql"].Rows[i]["id"].ToString() + "'> 修改设置</a>   <a href='book_type.aspx?type=" + set.Tables["sql"].Rows[i]["id"].ToString() + "'>删除</a></td></tr>";
                drop.Items.Add(new ListItem(System.Web.HttpUtility.HtmlDecode(Nbsp) + "├" + set.Tables["sql"].Rows[i]["title"].ToString(), set.Tables["sql"].Rows[i]["id"].ToString()));
                content1 += select(set.Tables["sql"].Rows[i]["id"].ToString(), set.Tables["sql"].Rows[i]["title"].ToString(), drop);

            }

            return content1;
        }
        public void deletentype(string id)
        {
            string sql = " delete  from producdtype where id=" + id + "";
            DBClass.OperatorCommand(sql);
            string sqls = " delete  from producdtype where parent_id=" + id + "";
            DBClass.OperatorCommand(sqls);

        }
        public void updatetype(TextBox title, TextBox p_value, string id)
        {
            string sql = "select*from producdtype where id=" + id + " order by p_value";
            DataSet set = DBClass.GetTableData(sql, "sql");
            if (set.Tables["sql"].Rows.Count > 0)
            {
                title.Text = set.Tables["sql"].Rows[0]["title"].ToString();
                p_value.Text = set.Tables["sql"].Rows[0]["p_value"].ToString();
            }
        }
        public bool insertlei(string text,  string id, string path, string p_value)
        {
            string sql = "insert into producdtype(title,parent_id,parent_path,p_value)values('" + text + "'," + id + "," + path + "," + p_value + ")";
            if (DBClass.OperatorCommand(sql))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool updatetypes(string title, string type, string p_value, string id)
        {
            string sql = "select*from producdtype where id=" + id + "";
            DataSet set = DBClass.GetTableData(sql, "sql");
            string sqls = "";
            if (set.Tables["sql"].Rows.Count > 0)
            {
                int path = 0;
                if (set.Tables["sql"].Rows[0]["parent_path"].ToString().Contains("0"))
                {
                    path = 0;
                    type = "0";
                }
                else
                {
                    path = int.Parse(set.Tables["sql"].Rows[0]["parent_path"].ToString());
                }
                sqls = "update producdtype set title='" + title + "', parent_id=" + type + ",parent_path=" + path + " ,p_value=" + p_value + " where id=" + id + "";

            }
            if (DBClass.OperatorCommand(sqls))
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        public static string pagecount(string id)
        {
            string sql = "select counts from [count]  where type="+id+" ";
            return Class1.OperatorCommandStr(sql);
        }
        public static  bool myTime(string str)
        {
            bool flag = false;
            string regex = @"^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578]
                                        )|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[4
                                        69])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\
                                        s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([1
                                        3579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((
                                        0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((
                                        0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9]
                                        )|(2[0-8]))))))"; //日期部分
            regex += @"(\s(((0?[0-9])|([1-2][0-3]))\:([0-5]?[0-9])((\s)|(\:([0-5]?[0-9])))))?$"; //时间部分
            RegexOptions options = ((RegexOptions.IgnorePatternWhitespace | RegexOptions.Multiline) | RegexOptions.IgnoreCase);
            Regex reg = new Regex(regex, options);
            if (reg.IsMatch(str))
            {
                flag = true;
            }
            return flag;
        }

    }

