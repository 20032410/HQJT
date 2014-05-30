<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="Aboutus" %>
<%@ Register Src="uc/top.ascx" TagName="top" TagPrefix="uc1" %>
<%@ Register Src="uc/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link href="style/style.css" rel="stylesheet" type="text/css" />
<TITLE>上海八优信息科技有限公司</TITLE> 
</head>
<body>
    <form id="form1" runat="server">
  <div id="container">
<!--head-->
<uc1:top ID="top" runat="server"></uc1:top>
<!--main-->
<div class="cle"></div>
<div class="ncontent">
<div class="nleft">

<ul class="l_nav">
<asp:Repeater ID="Repeater1" runat="server">
<ItemTemplate>
<li><a  href="Aboutus<%#Eval("id") %>.html" class='<%# getCss(Eval("id").ToString()) %>'><%#Eval("title") %></a></li>
 </ItemTemplate>
</asp:Repeater>
</ul>



<div class="nltop" style="margin-top:20px;"></div>
<div class="nlbg">
  <a href="solution.html"><img src="images/solution.jpg" border="0"  style="margin-left:5px; margin-top:2px;"/></a>
  </div>
<div class="nlbottom"></div>
<div class="nltop" style="margin-top:20px;"></div>
<div class="nlbg">
  <a href="case.html"><img src="images/case.jpg" border="0"  style="margin-left:5px; margin-top:2px;"/></a>
  </div>
<div class="nlbottom"></div>
</div>

<div class="nright">
<div class="nrtop"></div>
<div class="nrbg">
<div class="ntt">
<h2>关于我们</h2>
<span>您当前位置：<a href="Default.html">网站首页</a>  >>  <a href="Aboutus.html">关于我们</a>  >>  <%=title %></span></div>
<div style="padding:10px 20px; line-height:24px;">
<asp:Literal ID="Literal1" runat="server"></asp:Literal>
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