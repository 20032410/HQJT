<%@ Page Language="C#" AutoEventWireup="true" CodeFile="netview.aspx.cs" Inherits="netview" %>
<%@ Register Src="uc/top.ascx" TagName="top" TagPrefix="uc1" %>
<%@ Register Src="uc/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<%@ Register Src="uc/net_left.ascx" TagName="net_left" TagPrefix="uc3" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
  <TITLE>上海八优信息科技有限公司</TITLE> 
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script language="javascript" src="js/menu.js"></script>
</head>
<body>
    <form id="form1" runat="server">
  <div id="container">
<!--head-->
<uc1:top ID="top" runat="server"></uc1:top>
<!--main-->
<div class="cle"></div>
<div class="ncontent">
<uc3:net_left ID="net_left" runat="server"></uc3:net_left>

<div class="nright">
<div class="nrtop"></div>
<div class="nrbg">
<div class="ntt">
<h2>移动互联网</h2>
<span>您当前位置：<a href="Default.html">网站首页</a>  >>  <a href="products.html">产品与服务</a>  >>  移动互联网</span></div>
<div class="newsdata">
<h1><span><%=addtime%> </span><%=title%></h1>
<div class="data_info">
<asp:Literal ID="Literal1" runat="server"></asp:Literal>
<br />
<div style="float:left"><a style="color:#FF0000; font-size:14px; margin-right:10px;" href="<%=downurl1%>" target=_blank>本地下载</a>   <a style="color:#FF0000; font-size:14px; margin-right:10px;"  href="<%=downurl2%>" target=_blank>多特下载</a>   <a style="color:#FF0000; font-size:14px; margin-right:10px;"  href="<%=downurl2%>" target=_blank>华军下载</a></div>
<div style="float:right"><a style="margin-right:10px;" href="login.aspx?id=<%=id %>"><img src="images/sy_bt.jpg" border=0 /></a></div>
</div>

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