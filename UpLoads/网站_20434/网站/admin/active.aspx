<%@ Page Language="C#" AutoEventWireup="true" CodeFile="active.aspx.cs" Inherits="ccwl_admin_active" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>新闻管理</title>
    <meta content="JavaScript" name="vs_defaultClientScript">
    <link href="style/right.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="Form1" method="post" runat="server">
       <table style="width: 100%;" cellspacing="1" border="0" bgcolor="#3e97b9" cellpadding="0">
            <tr class="title">
                <td colspan="2" align="left" class="tb" style="height: 20px; text-align: left;">
                    <strong>新闻信息管理(搜索)：</strong>
                </td>
            </tr>
            <tr>
                <td style="height: 27px; text-align: left;" align="right" colspan="2">
                    新闻名称搜索：<asp:TextBox ID="TextBox1" runat="server" Width="130px" CssClass="inpt"></asp:TextBox>类型：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                        Width="132px" CssClass="inpt">
                    </asp:DropDownList><asp:Button ID="Button1" runat="server" CssClass="button_on" OnClick="Button1_Click"
                        Text="搜索" Height="21px" />&nbsp;<br />
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%"
            BorderStyle="None" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="id" BackColor="#3E97B9"
            CellPadding="0" CellSpacing="1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="编号" />
                <asp:TemplateField HeaderText="标题">
                    <ItemTemplate>
                        <%#Eval("title").ToString() %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="修改">
                    <ItemTemplate>
                        <a href="addactive.aspx?id=<%#Eval("id") %>">修改</a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField HeaderText="删除" DeleteText="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('你确定要删除?')&quot;&gt;删除&lt;/div&gt;"
                    ShowDeleteButton="True"></asp:CommandField>
            </Columns>
            <RowStyle HorizontalAlign="Center" />
            <HeaderStyle HorizontalAlign="Center" CssClass="tb" BorderStyle="None" />
        </asp:GridView>
       <webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="首页" Height="15px"
            LastPageText="尾页" NextPageText="下一页" NumericButtonTextFormatString="[{0}]" PrevPageText="上一页"
            Style="vertical-align: top" Width="100%" OnPageChanging="AspNetPager1_PageChanging"
            HorizontalAlign="Center" PageSize="20">
        </webdiyer:AspNetPager>
    </form>
</body>
</html>
