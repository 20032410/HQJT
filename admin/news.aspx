<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="admin_news"
    ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>新闻管理</title>
    <link href="style/right.css" type="text/css" rel="stylesheet">
    <%@ register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%;" cellspacing="1" border="0" bgcolor="#3e97b9" cellpadding="0">
            <tr align="center">
                <td class="tb" colspan="2" style="height: 20px; text-align: left;">
                    <table style="width: 100%;" cellspacing="1" border="0" bgcolor="#3e97b9" cellpadding="0">
                        <tr align="center">
                            <td class="tb" colspan="2" style="height: 20px; text-align: left;">
                                新手入门管理
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%"
            BorderStyle="None" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="id" BackColor="#3E97B9"
            CellPadding="0" CellSpacing="1" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging"
            PageSize="5">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="编号">
                    <HeaderStyle CssClass="tb" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="标题">
                    <HeaderStyle CssClass="tb" />
                    <ItemTemplate>
                        <%#Eval("title").ToString() %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="发布时间">
                    <HeaderStyle CssClass="tb" />
                    <ItemTemplate>
                        <%#Eval("pubTime").ToString() %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="浏览次数">
                    <HeaderStyle CssClass="tb" />
                    <ItemTemplate>
                        <%#Eval("pubCount")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="修改">
                    <HeaderStyle CssClass="tb" />
                    <ItemTemplate>
                        <a href="news.aspx?id=<%#Eval("id") %>">修改</a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField HeaderText="删除" DeleteText="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('你确定要删除?')&quot;&gt;删除&lt;/div&gt;"
                    ShowDeleteButton="True">
                    <HeaderStyle CssClass="tb" />
                </asp:CommandField>
            </Columns>
            <RowStyle HorizontalAlign="Center" />
            <HeaderStyle HorizontalAlign="Center" CssClass="tb" BorderStyle="None" />
        </asp:GridView>
        <table style="width: 100%;" cellspacing="1" border="0" bgcolor="#3e97b9" cellpadding="0">
            <tr align="center">
                <td class="tb" colspan="2" style="height: 20px; text-align: center;">
                    添加(修改)
                </td>
            </tr>
        </table>
        <table style="width: 100%;" cellspacing="1" border="0" bgcolor="#3e97b9" cellpadding="0">
            <tr>
                <td style="width: 125px; height: 24px;">
                    标题：</td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="inpt" Width="488px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 125px; height: 24px;">
                    内容：</td>
                <td>
                    <FCKeditorV2:FCKeditor ID="txtContent" runat="server" Height="400px">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" style="height: 24px">
                    <asp:Button ID="Button2" CssClass="button_on" runat="server" Text="添加" OnClick="Button2_Click"
                        Visible="False" />
                    <asp:Button ID="Button1" runat="server" CssClass="button_on" OnClick="Button1_Click"
                        Text="编辑" Visible="False" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
