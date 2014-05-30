<%@ Page Language="C#" AutoEventWireup="true" CodeFile="down.aspx.cs" Inherits="admin_down" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="style/right.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="Form1" runat="server">
        <table style="width: 100%;" cellspacing="1" border="0" bgcolor="#3e97b9" cellpadding="0">
            <tr class="title">
                <td colspan="2" align="left" class="tb" style="height: 20px; text-align: left;">
                    <strong>信息管理(搜索)：</strong>
                </td>
            </tr>
            <tr>
                <td style="height: 27px; text-align: left;" align="right" colspan="2">
                    名称搜索：<asp:TextBox ID="TextBox1" runat="server" Width="130px" CssClass="inpt"></asp:TextBox>类型：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                        Width="132px" CssClass="inpt">
                    </asp:DropDownList><asp:Button ID="Button1" runat="server" CssClass="button_on" OnClick="Button1_Click"
                        Text="搜索" Height="21px" />&nbsp;<br />
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%"
            DataKeyNames="id" OnRowDeleting="GridView1_RowDeleting" BorderStyle="None" OnSelectedIndexChanging="GridView1_SelectedIndexChanging"
            BackColor="#3E97B9" CellPadding="0" CellSpacing="1">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="编号" Visible="false">
                    <ItemStyle Width="100px" />
                    <HeaderStyle CssClass="tb" />
                </asp:BoundField>
             
                  
            
                <asp:BoundField DataField="shopname" HeaderText="名称">
                    <ItemStyle Width="300px" />
                    <HeaderStyle CssClass="tb" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="所属类别">
                    <ItemTemplate>
                        <%#types(Eval("type").ToString()) %>
                    </ItemTemplate>
                    <HeaderStyle CssClass="tb" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="图片">
                    <ItemTemplate>
                        <img src="<%#Eval("images") %>" width="52" height="52" />
                    </ItemTemplate>
                    <HeaderStyle CssClass="tb" />
                </asp:TemplateField>
               
                <asp:CommandField HeaderText="修改" ShowSelectButton="True" SelectText="修改">
                    <HeaderStyle CssClass="tb" />
                </asp:CommandField>
                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" DeleteText="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('你确定要删除?')&quot;&gt;删除&lt;/div&gt;">
                    <HeaderStyle CssClass="tb" />
                </asp:CommandField>
            </Columns>
            <RowStyle Height="32px" HorizontalAlign="Center" />
        </asp:GridView>
        <webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="首页" Height="15px"
            LastPageText="尾页" NextPageText="下一页" NumericButtonTextFormatString="[{0}]" PrevPageText="上一页"
            Style="vertical-align: top" Width="100%" OnPageChanging="AspNetPager1_PageChanging"
            HorizontalAlign="Center" PageSize="7">
        </webdiyer:AspNetPager>
    </form>
</body>
</html>
