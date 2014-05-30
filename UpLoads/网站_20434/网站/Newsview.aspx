<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Newsview.aspx.cs" Inherits="Newsview" %>
<%@ Register Src="uc/top.ascx" TagName="top" TagPrefix="uc1" %>
<%@ Register Src="uc/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<%@ Register Src="uc/news_left.ascx" TagName="news_left" TagPrefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
 <TITLE>上海八优信息科技有限公司</TITLE> 
<link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
  <div id="container">
<!--head-->
<uc1:top ID="top" runat="server"></uc1:top>
<!--main-->
<div class="cle"></div>
<div class="ncontent">
<uc3:news_left ID="news_left" runat="server"></uc3:news_left>

<div class="nright">
<div class="nrtop"></div>
<div class="nrbg">
<div class="ntt">
<h2>新闻中心</h2>
<span>您当前位置：<a href="Default.html">网站首页</a>  >>  <a href="News.html">新闻中心</a> >> <%=Bigname %></span>
</div>
<div class="newsdata">
<h1><span><%=addtime%> </span><%=title%></h1>
<div class="data_info">
<asp:Literal ID="Literal1" runat="server"></asp:Literal>
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