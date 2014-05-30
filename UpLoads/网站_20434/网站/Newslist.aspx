<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Newslist.aspx.cs" Inherits="Newslist" %>
<%@ Register Src="uc/top.ascx" TagName="top" TagPrefix="uc1" %>
<%@ Register Src="uc/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<%@ Register Src="uc/news_left.ascx" TagName="news_left" TagPrefix="uc3" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
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
<span>您当前位置：<a href="Default.html">网站首页</a>  >>  <a href="News.html">新闻中心</a> </span>
</div>
<div class="ins_news">
<ul>
<asp:Repeater ID="Repeater1" runat="server" >
<ItemTemplate>
<li><p><a href="Newsview_<%#Eval("type")%>_<%#Eval("id")%>.html"><%#Eval("title") %></a><span><%#Eval("addtime") %></span></p>
<p style="padding-left:10px; color:#999; clear:both"><%#Eval("info") %></p>
</li>
</ItemTemplate>
</asp:Repeater>
</ul>
</div>
<div style="height:24px; line-height:24px; clear:both; padding-bottom:10px;  text-align:right"><webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="True" CssClass="anpager"
                                                CurrentPageButtonClass="cpb" CustomInfoClass="" CustomInfoStyle="" FirstPageText="首页"
                                                Height="24px" HorizontalAlign="Right" LastPageText="尾页" NextPageText="下一页" OnPageChanging="AspNetPager1_PageChanging"
                                                PageIndexBoxType="DropDownList" PrevPageText="上一页" ShowPageIndexBox="Always"
                                                Style="vertical-align: top" UrlPaging="True" Width="90%" PageSize="6" EnableUrlRewriting="true"
                                             UrlRewritePattern="./Newslist%type%-{0}.html">
                                            </webdiyer:AspNetPager></div>
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