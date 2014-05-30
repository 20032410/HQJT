<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YX_Upfile.aspx.cs" Inherits="Admin_Ad_YX_Upfile3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>

</head>

<body style="background-color:#F6F6F6; margin-top:0px; margin-left:0px">
 <form id="form3" runat="server">
    <div>
        <asp:FileUpload ID="FileUpload3" runat="server" Height="22px" Width="185px"  />
        <asp:Button ID="Button11" runat="server" Text="上传图片" OnClick="Button11_Click" Height="22px"   /></div>
   </form>
</body>
</html>
