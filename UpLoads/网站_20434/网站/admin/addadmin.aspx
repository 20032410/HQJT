<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addadmin.aspx.cs" Inherits="admin_addadmin1" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>管理员设置</title>
    <link href="style/right.css" type="text/css" rel="stylesheet">
    <meta content="JavaScript" name="vs_defaultClientScript">
</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%"
            BorderStyle="None" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="id" BackColor="#3E97B9"
            CellPadding="0" CellSpacing="1" GridLines="None">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="编号" ReadOnly="True">
                    <HeaderStyle CssClass="tb" />
                </asp:BoundField>
                <asp:BoundField DataField="username" HeaderText="姓名">
                    <ControlStyle CssClass="inpt" />
                    <HeaderStyle CssClass="tb" />
                </asp:BoundField>
                <asp:BoundField DataField="password" HeaderText="密码">
                    <ControlStyle Width="200px" CssClass="inpt" />
                    <HeaderStyle CssClass="tb" />
                </asp:BoundField>
                
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="mima.aspx?userId={0}"
                    HeaderText="修改密码" Text="修改密码" HeaderStyle-CssClass="tb" />
                    
                <asp:CommandField HeaderText="删除" DeleteText="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('你确定要删除?')&quot;&gt;删除&lt;/div&gt;"
                    ShowDeleteButton="True">
                    <HeaderStyle CssClass="tb" />
                </asp:CommandField>
            </Columns>
            <RowStyle HorizontalAlign="Center" />
            <HeaderStyle HorizontalAlign="Center" CssClass="tb" BorderStyle="None" />
        </asp:GridView>
        <br />
        <table style="width: 100%;" cellspacing="1" border="0" bgcolor="#3e97b9" cellpadding="0">
            <tr class="title">
                <td colspan="2" align="left" class="tb" style="height: 20px; text-align: left;">
                    <strong>管理员设置</strong>
                </td>
            </tr>
            <tr>
                <td style="width:100px;">
                    姓&nbsp;&nbsp;&nbsp;&nbsp;名：
                </td>
                <td style="height: 27px; text-align: left;" align="right" colspan="2">
                    <asp:TextBox ID="adname" runat="server" Width="152px" BorderColor="#E0E0E0" BorderStyle="Solid"
                        CssClass="inpt"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    密&nbsp;&nbsp;&nbsp;&nbsp;码：
                </td>
                <td style="height: 27px; text-align: left;" align="right" colspan="2">
                    <asp:TextBox ID="pass" runat="server" Width="152px" TextMode="Password" BackColor="White"
                        BorderColor="#E0E0E0" BorderStyle="Solid" CssClass="inpt"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    确认密码：
                </td>
                <td style="height: 27px; text-align: left;" align="right">
                    <asp:TextBox ID="pass2" runat="server" Width="152px" TextMode="Password" BorderColor="#E0E0E0"
                        BorderStyle="Solid" CssClass="inpt"></asp:TextBox><asp:CompareValidator ID="CompareValidator1"
                            runat="server" ErrorMessage="两次密码不一样" ControlToValidate="pass2" ControlToCompare="pass">两次密码不一样</asp:CompareValidator></td>
            </tr>
          
            <tr align="center" style="font-family: 宋体">
                <td colspan="2" height="40">
                    <div align="left">
                        &nbsp;<font face="宋体"> &nbsp; &nbsp; &nbsp; &nbsp; </font>
                        <asp:Button ID="Button1" runat="server" Text="添 加" OnClick="Button1_Click" CssClass="button_on">
                        </asp:Button><font face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2"
                            runat="server" Text="重 置" CausesValidation="False" OnClick="Button2_Click" CssClass="button_on">
                        </asp:Button>&nbsp;&nbsp;</font>
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
