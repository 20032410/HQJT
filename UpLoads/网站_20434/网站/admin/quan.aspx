<%@ Page Language="C#" AutoEventWireup="true" CodeFile="quan.aspx.cs" Inherits="ccwl_admin_quan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>权限管理</title>
    <link href="style/right.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%;" cellspacing="1" border="0" bgcolor="#3e97b9" cellpadding="0">
            <tr class="title" align="center">
                <td colspan="2" style="height: 20px" class="tb">
                    <strong>权限管理</strong>
                </td>
            </tr>
        </table>
        <table border="1" style="border-collapse: collapse" bordercolor="#3e97b9" width="100%"
            align="center">
            <tr>
                <td width="100px">
                    用户名</td>
                <td>
                    拥有权限</td>
            </tr>
            <tr>
                <td valign="top" width="100px">
                    <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label></td>
                <td>
                    <asp:CheckBoxList ID="chklist" runat="server" RepeatDirection="Horizontal" RepeatColumns="4"
                        CellPadding="0" CellSpacing="0">
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td width="100px">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click"  CssClass="button_on"/></td>
            </tr>
        </table>
    </form>
</body>
</html>
