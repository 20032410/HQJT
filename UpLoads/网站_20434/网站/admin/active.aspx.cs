﻿
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

public partial class ccwl_admin_active : System.Web.UI.Page
{
    NewsClass p = new NewsClass();

    protected void Page_Load(object sender, EventArgs e)
    {
      AdminCs.CheckLoginState();
        if (!IsPostBack)
        {
            
            selectbook();
            p.type(DropDownList1, "0");
            Session["url"] = Request.RawUrl.ToString();
            DropDownList1.Items.Insert(0, new ListItem("请选择", "0"));
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string sql = "delete from addactive where id=" + GridView1.DataKeys[e.RowIndex].Value + "";
        DBClass.OperatorCommand(sql);
        selectbook();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

        GridView1.EditIndex = e.NewEditIndex;
        selectbook();
    }

    protected void AspNetPager1_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
    {
        AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        selectbook();

    }

  

    public void selectbook()
    {
        string sql = "select *  from  addactive  order by id desc";
        string sqls = "select count(*) from addactive ";
        DBClass.binddl(sqls, sql, "product", AspNetPager1, GridView1);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        resch();
    }
    public void resch()
    {

        string sql = "";
        string sqls = "";
        string type = "";
       
        if (TextBox1.Text.Trim() != "")
        {

            sql = "select *from addactive where  ";
            sqls = "select count(*) from addactive where  ";
            if (!DropDownList1.SelectedValue.Contains("0"))
            {

                type = " type=" + DropDownList1.SelectedValue + " or ";
                string sqld = "select id from newstype where parent_id=" + DropDownList1.SelectedValue + "";
                DataSet set = DBClass.GetTableData(sqld, "sql");
                for (int i = 0; i < set.Tables["sql"].Rows.Count; i++)
                {
                    type += "type=" + set.Tables["sql"].Rows[i]["id"].ToString() + " or ";
                    string select = "select id from newstype where parent_id=" + set.Tables["sql"].Rows[i]["id"].ToString() + "";
                    DataSet sets = DBClass.GetTableData(select, "sql");
                    for (int j = 0; j < sets.Tables["sql"].Rows.Count; j++)
                    {
                        type += "type=" + sets.Tables["sql"].Rows[j]["id"].ToString() + " or ";
                    }
                }
                type = type.Substring(0, type.LastIndexOf("or"));
            }
           
            if (type != "")
            {
                sql += "  id in  (select  id from addactive where" + type + ") and ";
                sqls += "   id in  (select  id from addactive where" + type + ") and ";
            }
           
            sql += "title like '%" + TextBox1.Text.Trim() + "%' order by id";
            sqls += "title like '%" + TextBox1.Text.Trim() + "%' ";
            DBClass.binddl(sqls, sql, "sql", AspNetPager1, GridView1);
        }
        else
        {
            if (!DropDownList1.SelectedValue.Contains("0"))
            {

                type = " type=" + DropDownList1.SelectedValue + " or ";
                string sqld = "select id from newstype where parent_id=" + DropDownList1.SelectedValue + "";
                DataSet set = DBClass.GetTableData(sqld, "sql");
                for (int i = 0; i < set.Tables["sql"].Rows.Count; i++)
                {
                    type += "type=" + set.Tables["sql"].Rows[i]["id"].ToString() + " or ";
                    string select = "select id from newstype where parent_id=" + set.Tables["sql"].Rows[i]["id"].ToString() + "";
                    DataSet sets = DBClass.GetTableData(select, "sql");
                    for (int j = 0; j < sets.Tables["sql"].Rows.Count; j++)
                    {
                        type += "type=" + sets.Tables["sql"].Rows[j]["id"].ToString() + " or ";
                    }
                }
                type = type.Substring(0, type.LastIndexOf("or"));
            }
           
            sql = "select * from addactive where ";
            sqls = "select count(*) from addactive where ";
            if (type != "")
            {
                sql += type;
                sqls += type;
            }
           
            if (!sql.Contains("type"))
            {
                selectbook();
            }
            else
            {
                DBClass.binddl(sqls, sql, "sql", AspNetPager1, GridView1);
            }

        }


}


}
