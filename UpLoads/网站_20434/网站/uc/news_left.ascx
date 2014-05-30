<%@ Control Language="C#" AutoEventWireup="true" CodeFile="news_left.ascx.cs" Inherits="uc_news_left" %>
<div class="nleft">
<div class="nltop"></div>
<div class="nlbg">
<h2>新闻中心</h2>
<ul class="left_nav">
<asp:Repeater ID="Repeater1" runat="server">
<ItemTemplate>
<li><a href="Newslist<%#Eval("id") %>.html" class='<%# getCss(Eval("id").ToString()) %>'><%#Eval("title")%></a></li>
 </ItemTemplate>
</asp:Repeater>
</ul>
</div>
<div class="nlbottom"></div>

<div class="nltop" style="margin-top:20px;"></div>
<div class="nlbg" style="height:78px">
  <a href="Solution.html"><img src="images/solution.jpg" border="0"  style="margin-left:5px; margin-top:2px; width:223px; height:78px; "/></a>
  </div>
<div class="nlbottom"></div>
<div class="nltop" style="margin-top:20px;"></div>
<div class="nlbg" style="height:78px">
  <a href="Case.html"><img src="images/case.jpg" border="0"  style="margin-left:5px; margin-top:2px;"/></a>
 </div>
<div class="nlbottom"></div>
</div>