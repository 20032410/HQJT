<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="ccwl_admin_login" %>
<html>
<head>
<title>后台管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<STYLE type=text/css>
.hh {border:1px solid #7AA4C2; width:155px; height:18px;}
.hh2 {border:1px solid #7AA4C2; width:80px; height:18px;}
form{ margin:0px; padding:0px;}

</STYLE>
<script language="javascript">
function CheckFrm(){
    if (document.getElementById("safecode").value.length == 0) {
        document.getElementById("safecode").focus();
        alert('验证码不能为空!');
        return false;
	}
		
		
	else if(document.getElementById("password").value.length == 0){
		document.getElementById("username").focus();
		alert('密码不能为空!');
		return false;
	}
	
	 else if(document.getElementById("username").value.length == 0){
		document.getElementById("username").focus();
		alert('用户名不能为空!');
		return false;
	}
	else
{
  return true;
}
}
 
function shows()
    {
         
var x = window.event.x;
var y = window.event.y;
var show = document.getElementById("divTest");
 show.style.top = y-200;
  show.style.left = x-250;
         document.all.divTest.style.display='block'; 
        document.getElementById("divTest").style.visibility="visible";
      document.all.ly.style.display="block";   
        document.all.ly.style.width=document.body.clientWidth+20;
        document.all.ly.style.height=document.body.clientHeight+20;
    }
    function closes()
    {
         
    document.getElementById("divTest").style.visibility="hidden";
     document.all.ly.style.display='none'
        
    }

    </script>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"  ><form  runat="server">
<table align="center" width="650" height="439" border="0" cellpadding="0" cellspacing="0" style=" margin-top:80px">
	<tr>
		<td width="150" height="109">
			<img src="images/dl_01.jpg" width="150" height="109" alt=""></td>
		<td width="181" height="109">
			<img src="images/dl_02.jpg" width="181" height="109" alt=""></td>
		<td width="174" height="109">
			<img src="images/dl_03.jpg" width="174" height="109" alt=""></td>
		<td width="145" height="109">
			<img src="images/dl_04.jpg" width="145" height="109" alt=""></td>
	</tr>
	<tr>
		<td width="150" style="height: 67px">
			<img src="images/dl_05.jpg" width="150" height="67" alt=""></td>
		<td width="181" style="height: 67px">
			<img src="images/dl_06.jpg" width="181" height="67" alt=""></td>
		<td width="174" style="height: 67px">
			<img src="images/dl_07.jpg" width="174" height="67" alt=""></td>
		<td width="145" style="height: 67px">
			<img src="images/dl_08.jpg" width="145" height="67" alt=""></td>
	</tr>
	<tr>
		<td width="150" height="117">
			<img src="images/dl_09.jpg" width="150" height="117" alt=""></td>
		<td colspan="2"  width="355" height="117" background="images/dl_10.jpg">
     
         <table width="60%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td  colspan="2" style="height: 20px"><font style="font-size:12px" color="#FFFFFF">用户名:</font>
        <asp:TextBox ID="username" runat="server" CssClass="hh"></asp:TextBox>
      </td>
  </tr>
  <tr>
    <td   colspan="2"><font style="font-size:12px" color="#FFFFFF">密&nbsp;&nbsp;码:</font>
        <asp:TextBox ID="password" runat="server" CssClass="hh" TextMode="Password"></asp:TextBox></td>
  </tr>
  <tr>
    <td  colspan="2"><font style="font-size:12px" color="#FFFFFF">验证码:</font>
        <asp:TextBox ID="safecode" runat="server" CssClass="hh" Width="106px"></asp:TextBox>
        <img id="codes"    src="code.aspx"    style=" width: 43px; height: 18px; vertical-align:middle" /></td>
  </tr>
  <tr>
    <td   width="57%" align="right" style="vertical-align: middle">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/admin/images/dl.jpg"  OnClientClick="return  CheckFrm();" OnClick="ImageButton1_Click"/>
    &nbsp;</td>
    <td width="43%" align="center" style="vertical-align: top">
       <img src="images/mm.jpg" alt="忘记密码" border="0" onclick="shows()"> </td>
  </tr>
</table>
 
        </td>
		<td width="145" height="117">
			<img src="images/dl_11.jpg" width="145" height="117" alt=""></td>
	</tr>
	<tr>
		<td width="150" height="146">
			<img src="images/dl_12.jpg" width="150" height="146" alt=""></td>
		<td width="181" height="146">
			<img src="images/dl_13.jpg" width="181" height="146" alt=""></td>
		<td width="174" height="146">
			<img src="images/dl_14.jpg" width="174" height="146" alt=""></td>
		<td width="145" height="146">
			<img src="images/dl_15.jpg" width="145" height="146" alt=""></td>
	</tr>
</table>
 <div id="divTest"  style="position: absolute; border:1px solid #BCDDE6; z-index: 3; width: 288px; height: 1px;
            background-image:url(images/dl_10.jpg);  display: none; top: 200px; left: 150px;">
            
            <table style="width: 287px;background-image:url(images/dl_10.jpg); font-size:12px">
 <tr>
 <td    style="padding:0 10px; color:#ffffff; font-size:12px; font-weight:bold; height: 14px; width: 265px;">
     ※请填写登录账号</td><td style="height: 14px;"><img src="images/check_error.gif" class="right pointer" onclick="closes()" title="关闭" /></td>
 </tr>
     <tr>
         <td style="text-align: center; width: 265px; height: 22px;">
             登录名：<asp:TextBox ID="TextBox2" runat="server" CssClass="hh" Width="96px"></asp:TextBox></td>
     </tr>
     <tr>
         <td style="text-align: center; height: 20px; width: 265px;">
             <asp:Literal ID="Literal1" runat="server"></asp:Literal>
             <asp:Button ID="Button4" runat="server" Text="确认" OnClick="Button3_Click" CssClass="button60" Height="18px"  />   </td>
     </tr>
 </table>

        </div>
        <div id="ly" style="position: absolute; top: 0px; filter: alpha(opacity=60); background-color: #777;
            z-index: 2; left: 0px; display: none;">
        </div>
</form>
</body>
</html>