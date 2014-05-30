<%@ Page Language="C#" AutoEventWireup="true" CodeFile="down_type.aspx.cs" Inherits="admin_down_type" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 
<title></title>
  <link href="style/right.css" type="text/css" rel="stylesheet">
</head>

<body>
<form id="Form1" runat="server">
 <table style="WIDTH: 100%; " cellSpacing="1" border="0" bgcolor="#3e97b9" cellpadding="0" >
				  
            <tr>
               
              <td align="left"  ><strong>类型管理</strong></td>
            </tr>
     <tr>
         <td align="left"  >
             添加大类：<asp:TextBox ID="TextBox1" runat="server" CssClass="inpt"></asp:TextBox>
             排序值：<asp:TextBox ID="p_value" runat="server" CssClass="inpt">1</asp:TextBox>
             <asp:Button ID="Button5"
                 runat="server" OnClick="Button5_Click" Text="添加" CssClass="button_on" Height="21px" /></td>
     </tr>
        </table>
            <asp:Panel ID="Panel2" runat="server"   Visible="false" Width="100%"><br />
                 <table  style="WIDTH: 100%; " cellSpacing="1" 	   border="0" bgcolor="#3e97b9" cellpadding="0" >
	
                     <tr>
                         <td style="width: 140px; height: 24px;">
                             所属分类：</td>
                         <td colspan="2" style="height: 24px">
                             <asp:DropDownList ID="drop" runat="server" Width="150px">
                             </asp:DropDownList></td>
                     </tr>
                     <tr>
                         <td style="width: 140px; height: 24px;">
                             分类名称：</td>
                         <td colspan="2" style="height: 24px">
                             <asp:TextBox ID="title" runat="server" Width="144px" CssClass="inpt"></asp:TextBox></td>
                     </tr>
                                         
                     <tr>
                         <td style="width: 140px">
                             分类排序值：</td>
                         <td colspan="2">
                             <asp:TextBox ID="p_values" runat="server" Width="144px" CssClass="inpt">1</asp:TextBox></td>
                     </tr>
                     <tr>
                         <td style="width: 140px">
                       &nbsp;&nbsp;&nbsp;</td>
                         <td colspan="2">
                             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" CssClass="button_on" />
                             <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="修改" CssClass="button_on" Visible="False" />
                             </td>
                     </tr>
                 </table>
             </asp:Panel>
 <asp:Panel ID="Panel1" runat="server"   Width="100%">        <br />
                  <table style="WIDTH: 100%; " cellSpacing="1" 	   border="0" bgcolor="#3e97b9" cellpadding="0">
                     <tr  >
                         <td align="center" class="tb"   height="22" style="width: 200px">
                             菜<strong>单名称</strong></td>
                         <td align="center"  class="tb"  height="22" style="padding-left: 6px">
                             <strong>操作选项</strong></td>
                     </tr>
                     <asp:Literal ID="Literal1" runat="server"></asp:Literal></table> 
             </asp:Panel>
       
</form>
</body>
</html>
