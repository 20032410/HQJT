<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addactive.aspx.cs" Inherits="ccwl_admin_addactive" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title> 新闻管理</title>
    <link href="style/right.css" type="text/css" rel="stylesheet">
    <meta content="JavaScript" name="vs_defaultClientScript">
    
    <script src="../../ckeditor/ckeditor.js" type="text/javascript"></script>
</head>
<body>
    <form id="Form1" method="post" runat="server">
        <table style="width: 100%;" cellspacing="1" border="0" bgcolor="#3e97b9" cellpadding="0">
            <tr class="title">
                <td colspan="2" align="left" class="tb" style="height: 20px; text-align: left;">
                    <strong> 新闻管理</strong></td>
            </tr>
            <tr>
                <td align="left"" style="width: 15%; height: 24px">
                    新闻类型： &nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="212px">
                    </asp:DropDownList></td>
                    
            </tr>
            <tr>
                <td align="right" style="height: 26px; text-align: left";">
                    网站标题：
                
                    &nbsp;<asp:TextBox ID="webtitle" runat="server" Width="384px" CssClass="inpt"></asp:TextBox></td>
            </tr>
             <tr>
                <td align="right" style="height: 26px; text-align: left";">
                    网站关键字：
                
                    &nbsp;<asp:TextBox ID="webkeyword" runat="server" Width="384px" CssClass="inpt"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" style=" height: 26px; text-align: left";">
                    网站描述：
                
                    &nbsp;<asp:TextBox ID="webdiscription" runat="server" Width="384px" CssClass="inpt"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" colspan="2" style="height: 27px; text-align: left">
                    标题：<asp:TextBox ID="Textbox1" runat="server" BorderColor="#E0E0E0" BorderStyle="Solid"
                        CssClass="inpt" Width="323px"></asp:TextBox></td>
            </tr>
           
            <tr>
                <td align="right" colspan="2" style="height: 27px; text-align: left">
                    简介：
                    <asp:TextBox ID="beizhu" CssClass="inpt" runat="server" TextMode="MultiLine"></asp:TextBox>
    <script type="text/javascript">
        CKEDITOR.replace('<%= beizhu.ClientID %>', {
            filebrowserBrowseUrl: '/ckfinder/ckfinder.html',
            filebrowserImageBrowseUrl: '/ckfinder/ckfinder.html?Type=Images',
            filebrowserFlashBrowseUrl: '/ckfinder/ckfinder.html?Type=Flash',
            filebrowserUploadUrl: '/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Files',
            filebrowserImageUploadUrl: '/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Images',
            filebrowserFlashUploadUrl: '/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Flash'
        });</script>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="2" style="height: 27px; text-align: left">
                    <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" CssClass="button_on">
                    </asp:Button>
                    <asp:Button ID="Button2" runat="server" CssClass="button_on" OnClick="Button2_Click"
                        Text="修改" Visible="False" />
                    <input id="Button3" class="button_on" onclick="history.go(-1);" type="button" value="返回" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
