<%@ Control Language="C#" AutoEventWireup="true" CodeFile="top.ascx.cs" Inherits="uc_top" %>
<div id="head">
<div class="sina"><img src="images/sina_weibo.jpg" /></div>
</div>
<!--menu-->
<div class="cle"></div>
<div id="topmenu">
<div class="menu" id="nav">
<ul>
<li><a href="Default.html">首   页</a></li>
<li class="mline"><img src="images/menu/menu_line.jpg" /></li>
<li><a  href="Sms.html">产品与服务</a>
<ul>
   <li class="lft"><img src="images/menu/smenu_left.jpg" /></li>
	<li><a href="Sms.html">短信平台</a></li>
	<li class="lline"><img src="images/menu/smenu_line.jpg" /></li>
	<li><a href="Net.html">移动互联网</a></li>
	<li class="lline"><img src="images/menu/smenu_line.jpg" /></li>
	<li><a href="Interaction.html">互动平台</a></li>
	<li class="lft"><img src="images/menu/smenu_right.jpg" /></li>
</ul>
</li>
<li class="mline"><img src="images/menu/menu_line.jpg" /></li>
<li><a  href="Solution.html">解决方案</a>
<ul>
   <li class="lft"><img src="images/menu/smenu_left.jpg" /></li>
   <asp:Repeater ID="Repeater1" runat="server">
     <ItemTemplate>
	<li><a href="Sollist<%#Eval("id") %>.html"><%#Eval("title") %></a></li>
	<li class="lline"><img src="images/menu/smenu_line.jpg" /></li>
	</ItemTemplate>
    </asp:Repeater> 
	<li class="lft"><img src="images/menu/smenu_right.jpg" /></li>
</ul>
</li>
<li class="mline"><img src="images/menu/menu_line.jpg" /></li>
<li><a  href="News.html">新闻中心</a>
<ul>
   <li class="lft"><img src="images/menu/smenu_left.jpg" /></li>
   <asp:Repeater ID="Repeater2" runat="server">
     <ItemTemplate>
	<li><a href="Newslist<%#Eval("id") %>.html"><%#Eval("title") %></a></li>
	<li class="lline"><img src="images/menu/smenu_line.jpg" /></li>
	</ItemTemplate>
    </asp:Repeater> 
	<li class="lft"><img src="images/menu/smenu_right.jpg" /></li>
</ul>
</li>
<li class="mline"><img src="images/menu/menu_line.jpg" /></li>
<li><a  href="Download.html">下载中心</a>
<ul>
   <li class="lft"><img src="images/menu/smenu_left.jpg" /></li>
   <asp:Repeater ID="Repeater3" runat="server">
     <ItemTemplate>
	<li><a href="Downlist<%#Eval("id") %>.html"><%#Eval("title") %></a></li>
	<li class="lline"><img src="images/menu/smenu_line.jpg" /></li>
	</ItemTemplate>
    </asp:Repeater> 
	<li class="lft"><img src="images/menu/smenu_right.jpg" /></li>
</ul>
</li>
<li class="mline"><img src="images/menu/menu_line.jpg" /></li>
<li><a  href="Case.html">成功案例</a>
<ul>
   <li class="lft"><img src="images/menu/smenu_left.jpg" /></li>
   <asp:Repeater ID="Repeater4" runat="server">
     <ItemTemplate>
	<li><a href="Caselist<%#Eval("id") %>.html"><%#Eval("title") %></a></li>
	<li class="lline"><img src="images/menu/smenu_line.jpg" /></li>
	</ItemTemplate>
    </asp:Repeater> 
	<li class="lft"><img src="images/menu/smenu_right.jpg" /></li>
</ul>
</li>
<li class="mline"><img src="images/menu/menu_line.jpg" /></li>
<li><a href="Proxy.html">代理加盟</a></li>
<li class="mline"><img src="images/menu/menu_line.jpg" /></li>
<li><a href="Aboutus.html">关于我们</a></li>
</ul>
</div>
</div>
<SCRIPT src="js/jquery.min.js" type=text/javascript></SCRIPT>

<SCRIPT src="js/tabmenu.js" type=text/javascript></SCRIPT>