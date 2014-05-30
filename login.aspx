<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<%@ Register Src="uc/top.ascx" TagName="top" TagPrefix="uc1" %>
<%@ Register Src="uc/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<%@ Register Src="uc/sms_left.ascx" TagName="sms_left" TagPrefix="uc3" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
 <TITLE>上海八优信息科技有限公司</TITLE> 
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/PCASClass.js"></script>
<script>
    function submitRecommend() {


        if (document.getElementById("Username").value == "") {
            alert("姓名不能为空！");
            document.getElementById("Username").focus();
            return false;
        }
        if (document.getElementById("phone").value == "") {
            alert("手机不能为空！");
            document.getElementById("phone").focus();
            return false;
        }
        if (document.getElementById("qq").value == "") {
            alert("qq不能为空！");
            document.getElementById("qq").focus();
            return false;
        }

    }
   </script>
</head>
<body>
    <form id="form1" runat="server">
  <div id="container">
<!--head-->
<uc1:top ID="top" runat="server"></uc1:top>
<!--main-->
<div class="cle"></div>
<div class="ncontent">
<uc3:sms_left ID="sms_left" runat="server"></uc3:sms_left>

<div class="nright">
<div class="nrtop"></div>
<div class="nrbg">
<div class="ntt">
<h2>在线试用</h2>
<span>您当前位置：<a href="Default.html">网站首页</a>  >>  <a href="login.aspx">在线试用</a></span></div>
<div class="newsdata">
<table width="690" border="0" align="center" cellpadding="0" cellspacing="0" class="tb">
  
   
    <tr>
    <td width="10%"><div align="left">姓名:&nbsp;&nbsp;</div></td>
    <td width="90%"><input id="UserName"  name="UserName" class="inpt"  type="text" runat="server" /> <span class="red">*</span>
  </tr>
 
   <tr>
    <td width="10%"><div align="left">手机:&nbsp;&nbsp;</div></td>
    <td width="90%"><input id="phone"  name="phone" class="inpt"  type="text" runat="server" />  <span class="red">*</span></td>
  </tr>
   <tr>
    <td width="10%"><div align="left">QQ:&nbsp;&nbsp;</div></td>
    <td width="90%"><input id="qq"  name="qq" class="inpt"  type="text" runat="server" /> <span class="red">*</span></td>
  </tr>
   <tr>
    <td width="10%"><div align="left">电话:&nbsp;&nbsp;</div></td>
    <td width="90%"><input id="tel"  name="tel" class="inpt"  type="text" runat="server" /> </td>
  </tr>
   <tr>
    <td width="10%"><div align="left">公司:&nbsp;&nbsp;</div></td>
    <td width="90%"><input id="company"  name="company" class="inpt"  type="text" runat="server" /> </td>
  </tr>
  <tr>
    <td width="10%"><div align="left">留言:&nbsp;&nbsp;</div></td>
    <td width="90%"><textarea id="comment" name="comment" rows="3" style="width:400px; height:80px; border:1px solid #DDD"   runat="server"></textarea>
     </td>
  </tr>
  
  <tr>
    <td width="10%"><div align="left">地址:&nbsp;&nbsp;</div></td>
    <td width="90%"><select name="province"></select>
									<select name="city"></select>
									<select name="area"></select>
									<script language="javascript" defer>

									    new PCAS("province", "city", "area");

</script></td>
  </tr>

   <tr>
    <td width="10%">&nbsp;</td>
    <td width="90%">&nbsp;</td>
  </tr>
 
  <tr>
    <td>&nbsp;</td>
    <td><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/ok.gif"  OnClientClick=" javascript:return submitRecommend();" OnClick="ImageButton1_Click" />
      &nbsp;  
      <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="images/cancer.gif"    OnClick="ImageButton2_Click" />
       </td>
  </tr>

</table>

</div>



</div>
<div class="nrbottom"></div>
</div>

</div>
</div>
<div class="bt">
<img src="images/main_foot_bg.jpg" />
</div>		
<uc2:footer ID="footer" runat="server"></uc2:footer>
    </form>
</body>
</html>