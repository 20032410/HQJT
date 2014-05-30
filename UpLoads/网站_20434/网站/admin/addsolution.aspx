<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addsolution.aspx.cs" Inherits="admin_addsolution"
    ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="style/right.css" type="text/css" rel="stylesheet">
    <meta content="JavaScript" name="vs_defaultClientScript">
 <script src="CalendarDate.js"></script>
     <script src="../../ckeditor/ckeditor.js" type="text/javascript"></script>

    <title></title>
</head>
<body>
    <form id="Form1" runat="server">
        <table style="width: 100%;" cellspacing="1" border="0" bgcolor="#3e97b9" cellpadding="0">
            <tr>
                <td align="left" class="tb" colspan="4" style="text-align: left">
                    解决方案添加/修改 &nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="width: 15%; height: 24px">
                    解决方案类型：</td>
                <td align="left"  style="padding-left: 16px; height: 24px" colspan="3">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="150px">
                    </asp:DropDownList></td>
                    
            </tr>
            
         
            <tr>
            <td align="right" style="height: 24px; width: 15%;">
                    名称：</td>
                <td align="left" style="padding-left: 16px; height: 24px;" colspan="3">
                    <asp:TextBox ID="shopname" runat="server" CssClass="inpt" Width="200px"></asp:TextBox></td>
               </tr> 
                <tr>
            <td align="right" style="height: 24px; width: 15%;">
                    简要说明：</td>
                <td align="left" style="padding-left: 16px; height: 24px;" colspan="3">
                    <asp:TextBox ID="info" runat="server" CssClass="inpt" Width="400px" Height="100px" TextMode="MultiLine"></asp:TextBox></td>
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
             
            <tr>
                <td align="right" style="height: 23px; width: 15%;">
                      图片地址：</td>
                <td align="left" colspan="3" style="padding-left: 16px; height: 23px">
                      <asp:TextBox ID="txtProImg" runat="server"  CssClass="inpt1"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Width="200px"  Height="22"  CssClass="inpt"/>
      <asp:Button ID="UpImg" runat="server" Text="上传" OnClick="UpImg_Click" CssClass="button_on"/></td>
            </tr>
            
           
            <tr>
                <td align="right" style="height: 24px; width: 15%;">
                    发布时间：</td>
                <td align="left" colspan="3" style="padding-left: 16px; height: 24px">
                    <asp:TextBox ID="times" class="textfield" runat="server" onclick="setday(this)" Width="150px"  CssClass="inpt"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td align="right" style="width: 15%; height: 24px">
                    推荐到首页：</td>
                <td align="left" colspan="3" style="padding-left: 16px; height: 24px">
                    <asp:CheckBox ID="CheckBox1" runat="server" /></td>
            </tr>
             
            <tr>
                <td align="right" style="height: 24px; width:15%;">
                    &nbsp;</td>
                <td align="left" colspan="3" style="padding-left: 16px; height: 24px">
                    <asp:Button ID="Button1" runat="server" CssClass="button_on" OnClick="Button1_Click"
                        Text="添加" />
                    <asp:Button ID="Button2" runat="server" CssClass="button_on" OnClick="Button2_Click"
                        Text="修改" Visible="False" />
                    <input id="Button3" class="button_on" onclick="history.go(-1);" type="button" value="返回" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
