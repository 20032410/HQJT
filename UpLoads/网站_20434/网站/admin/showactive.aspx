<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showactive.aspx.cs" Inherits="admin_showcar" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>添加管理员</title>
    <meta content="JavaScript" name="vs_defaultClientScript">
    <link href="style/right.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="Form1" method="post" runat="server">
        <table style="width: 100%;" cellspacing="1" border="0" bgcolor="#3e97b9" cellpadding="0">
            <tr align="center">
                <td class="tb" colspan="2" style="height: 20px; text-align: left;">
                    综合信息管理
                </td>
            </tr>
        </table>
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
                        <a href="add_active.aspx?id=<%#Eval("id") %>&type=<%=Request.QueryString["type"].ToString() %>">
                            修改</a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField HeaderText="删除" DeleteText="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('你确定要删除?')&quot;&gt;删除&lt;/div&gt;"
                    ShowDeleteButton="True"></asp:CommandField>
            </Columns>
            <RowStyle HorizontalAlign="Center" />
            <HeaderStyle HorizontalAlign="Center" CssClass="tb" BorderStyle="None" />
        </asp:GridView>
        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" CustomInfoTextAlign="Center"
            FirstPageText="首页" HorizontalAlign="Center" LastPageText="最后一页" NextPageText="下一页"
            PrevPageText="上一页" UrlPaging="True" Width="100%" NumericButtonTextFormatString="[{0}]"
            OnPageChanging="AspNetPager1_PageChanging">
        </webdiyer:AspNetPager>
    </form>
</body>
</html>
