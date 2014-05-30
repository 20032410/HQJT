<%@ Page Language="C#" AutoEventWireup="true" CodeFile="basicinfo.aspx.cs" Inherits="ccwl_admin_basicinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="style/right.css" type="text/css" rel="stylesheet">
    
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%;" cellspacing="1" border="0" bgcolor="#3e97b9" cellpadding="0">
            <tr class="title">
                <td colspan="2" align="left" class="tb" style="height: 20px; text-align: left;">
                    <strong>网站基本信息设置</strong>
                </td>
            </tr>
            <tr>
                <td style="height: 27px; text-align: left; width: 200px;" align="left">
                    网站名称：</td>
                <td>
                    <asp:TextBox ID="tbxTitle" runat="server" Width="500px" Height="100px" TextMode="MultiLine" BorderColor="#E0E0E0" BorderStyle="Solid"
                        CssClass="inpt"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="height: 27px; text-align: left; width: 200px;" align="left">
                    DESCRIPTION关键字：</td>
                <td>
                    <asp:TextBox ID="tbxDescription" runat="server"  Width="500px" Height="100px" TextMode="MultiLine" ackColor="White" BorderColor="#E0E0E0"
                        BorderStyle="Solid" CssClass="inpt"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="height: 27px; text-align: left; width: 200px;" align="left">
                    keywords关键字：</td>
                <td>
                    <asp:TextBox ID="tbxKeywords" runat="server" Width="500px" Height="100px" TextMode="MultiLine" BorderColor="#E0E0E0"
                        BorderStyle="Solid" CssClass="inpt"></asp:TextBox></td>
            </tr>
           
           
            <tr align="center" style="font-family: 宋体">
                <td colspan="2" height="40">
                    <div align="left">
                        &nbsp;<font face="宋体"> &nbsp; &nbsp; &nbsp; &nbsp; </font>
                        <asp:Button ID="btnUpdate" runat="server" Text="提交" CssClass="button_on" ValidationGroup="submit"
                            OnClick="btnUpdate_Click" />
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
