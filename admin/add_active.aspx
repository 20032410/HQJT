<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_active.aspx.cs" Inherits="admin_add_mcar"
    ValidateRequest="false" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="style/right.css" type="text/css" rel="stylesheet">
     <script src="../../ckeditor/ckeditor.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%;" cellspacing="1" border="0" bgcolor="#3e97b9" cellpadding="0">
            <tr align="center">
                <td class="tb" colspan="2" style="height: 20px; text-align: left;">
                    综合信息管理
                </td>
            </tr>
             
            <tr>
                <td align="right" style="width: 160px; height: 26px; text-align: right;">
                    标题：
                </td>
                <td>
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="384px" CssClass="inpt"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="right" style="width: 200px; height: 26px; text-align: right;">
                   详细说明：
                </td>
                <td>
                   <asp:TextBox ID="beizhu" CssClass="inpt" runat="server" TextMode="MultiLine"></asp:TextBox>
    <script type="text/javascript">
        CKEDITOR.replace('<%= beizhu.ClientID %>', {
            filebrowserBrowseUrl: '/ckfinder/ckfinder.html',
            filebrowserImageBrowseUrl: '/ckfinder/ckfinder.html?Type=Images',
            filebrowserFlashBrowseUrl: '/ckfinder/ckfinder.html?Type=Flash',
            filebrowserUploadUrl: '/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Files',
            filebrowserImageUploadUrl: '/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Images',
            filebrowserFlashUploadUrl: '/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Flash'
        });</script></td>
            </tr>
                <td align="right" style="width: 10%; height: 27px; text-align: right">
                    发布时间：</td>
                <td style="width: 80%; height: 27px">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="inpt" Width="151px"></asp:TextBox></td>
            </tr>
            
            <tr align="center" class="tdbg" style="color: #000000; font-family: 宋体">
                <td colspan="2" height="40">
                    <asp:Button ID="Button1" runat="server" Height="20px" OnClick="Button1_Click" Text="添加"
                        Width="43px" CssClass="button_on" /><asp:Button ID="Button2" runat="server" Height="21px"
                            OnClick="Button2_Click1" Text="修改" Visible="False" Width="43px" CssClass="button_on" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
