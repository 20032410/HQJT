<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Src="uc/top.ascx" TagName="top" TagPrefix="uc1" %>
<%@ Register Src="uc/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>上海八优信息科技有限公司</title> 
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link href="style/style.css" rel="stylesheet" type="text/css" />
      

<script type="text/javascript">
function nTabs(thisObj,Num)
{
	if(thisObj.className == "active")return;
	var tabObj = thisObj.parentNode.id;
	var tablist = document.getElementById(tabObj).getElementsByTagName("li");
	for(i=0; i <tablist.length; i++)
	{
		if (i == Num)
		{
		   thisObj.className = "active";
			  document.getElementById(tabObj+"_Content"+i).style.display = "block";
		}
		else
		{
		   tablist[i].className = "normal";
		   document.getElementById(tabObj+"_Content"+i).style.display = "none";
		}
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
<div id="main">
<div class="ibanner">
<iframe src="banner.htm" frameborder="0" scrolling="no" width="730" height=262 id="test" /></iframe>
</div>
<div class="iright">
<div class="divt">
<h2>新闻资讯 <font>NEWS</font></h2> <span><a href="News.html"><img src="images/more.jpg" border="0" /></a></span>
</div>
<div class="ind_news">
<ul>
<asp:Repeater ID="Repeater1" runat="server">
  <ItemTemplate>	
<li><a href="Newsview_<%#Eval("type")%>_<%#Eval("id")%>.html"><%#Eval("title").ToString().Length > 18 ? Eval("title").ToString().Substring(0, 18) + "..." : Eval("title").ToString()%></a></li>
 </ItemTemplate>
</asp:Repeater> 
</ul>
</div>
</div>
</div>

<!--table-->

<div class="nTab">
				<!-- 标题开始 -->
				<div class="TabTitle">
				  <ul id="myTab1" >
				
					<li class="active" onmouseover="nTabs(this,0);">产品中心</li>
					<li class="normal" onmouseover="nTabs(this,1);">解决方案</li>
					<li class="normal" onmouseover="nTabs(this,2);">最新活动</li>
					<li class="normal" onmouseover="nTabs(this,3);">关于我们</li>
				  </ul>
    </div>
				<!-- 内容开始 -->
				<div class="TabContent">
					<div id="myTab1_Content0">
				 <div class="topics">
		 
		 	<asp:Repeater ID="Repeatery" runat="server">
  <ItemTemplate>
 
	<dl>
		<dt><a href="netview_<%#Eval("id")%>.html"><img src="admin/<%#Eval("images")%>" /></a></dt>
		<dd class="tr_tit"><a href="netview_<%#Eval("id")%>.html"> <%#Eval("shopname").ToString().Length > 12 ? Eval("shopname").ToString().Substring(0, 12) + "..." : Eval("shopname").ToString()%></a></dd>
		<dd><%#StringClass.htmlSub(Eval("info").ToString())%></dd>
		</dl>
		</ItemTemplate>
</asp:Repeater> 
		<div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top">
<ul class="news">
	<asp:Repeater ID="Repeater6" runat="server">
  <ItemTemplate>
	<li><a href="netview_<%#Eval("id")%>.html"> <%#Eval("shopname").ToString().Length > 20 ? Eval("shopname").ToString().Substring(0, 20) + "..." : Eval("shopname").ToString()%></a></li>
</ItemTemplate>
</asp:Repeater> 
	</ul>
	</td>
 
  </tr>
</table>
<span style="float:right; margin-top:10px; margin-right:1px;"><a href="net.html"><img src="images/cmore.jpg" /></a></span>
</div>

		 </div>
	 
		 <div class="topics">
		<asp:Repeater ID="Repeater2" runat="server">
  <ItemTemplate>
 		<dl>
		<dt><a href="smsview_<%#Eval("id")%>.html"><img src="admin/<%#Eval("images")%>" /></a></dt>
		<dd class="tr_tit"><a href="smsview_<%#Eval("id")%>.html"> <%#Eval("shopname").ToString().Length > 12 ? Eval("shopname").ToString().Substring(0, 12) + "..." : Eval("shopname").ToString()%></a></dd>
		<dd><%#StringClass.htmlSub(Eval("info").ToString())%></dd>
		</dl>
		</ItemTemplate>
</asp:Repeater> 
		<div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top">
	<ul class="news">
	<asp:Repeater ID="Repeater5" runat="server">
  <ItemTemplate>
	<li><a href="smsview_<%#Eval("id")%>.html"> <%#Eval("shopname").ToString().Length > 20 ? Eval("shopname").ToString().Substring(0, 20) + "..." : Eval("shopname").ToString()%></a></li>
</ItemTemplate>
</asp:Repeater> 
	</ul>
	</td>
    
  </tr>
</table>
<span style="float:right; margin-top:10px; margin-right:1px;"><a href="Sms.html"><img src="images/cmore.jpg" /></a></span>
</div>

</div>

		 <div class="topics">
		 
		 	<asp:Repeater ID="Repeateri" runat="server">
  <ItemTemplate>
 
		<dl>
		<dt><a href="interview_<%#Eval("id")%>.html"><img src="admin/<%#Eval("images")%>" /></a></dt>
		<dd class="tr_tit"><a href="interview_<%#Eval("id")%>.html"> <%#Eval("shopname").ToString().Length > 12 ? Eval("shopname").ToString().Substring(0, 12) + "..." : Eval("shopname").ToString()%></a></dd>
		<dd><%#StringClass.htmlSub(Eval("info").ToString())%></dd>
		</dl>
		</ItemTemplate>
</asp:Repeater> 
		<div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top">
	<ul class="news">
	<asp:Repeater ID="Repeater7" runat="server">
  <ItemTemplate>
	<li><a href="interview_<%#Eval("id")%>.html"> <%#Eval("shopname").ToString().Length > 20 ? Eval("shopname").ToString().Substring(0, 20) + "..." : Eval("shopname").ToString()%></a></li>
</ItemTemplate>
</asp:Repeater> 
	</ul>
	</td>
  </tr>
</table>
<span style="float:right; margin-top:10px; margin-right:1px;"><a href="Interaction.html"><img src="images/cmore.jpg" /></a></span>
</div>

		 </div>
				
		 <div class="topics">
		 
		 	<asp:Repeater ID="Repeaterc" runat="server">
  <ItemTemplate>
  <dl>
 <dt><a href="Planarview_<%#Eval("id")%>.html"><img src="admin/<%#Eval("images")%>" /></a></dt>
		<dd class="tr_tit"><a href="Planarview_<%#Eval("id")%>.html"> <%#Eval("shopname").ToString().Length > 12 ? Eval("shopname").ToString().Substring(0, 12) + "..." : Eval("shopname").ToString()%></a></dd>
		<dd><%#StringClass.htmlSub(Eval("info").ToString())%></dd>
		</dl>
		</ItemTemplate>
</asp:Repeater> 
		<div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top">
	<ul class="news">
	<asp:Repeater ID="Repeater8" runat="server">
  <ItemTemplate>
	<li><a href="Planarview_<%#Eval("id")%>.html"> <%#Eval("shopname").ToString().Length > 20 ? Eval("shopname").ToString().Substring(0, 20) + "..." : Eval("shopname").ToString()%></a></li>
</ItemTemplate>
</asp:Repeater> 
	</ul>
	</td>
    
  </tr>
</table>
<span style="float:right; margin-top:10px; margin-right:1px;"><a href="Planar.html"><img src="images/cmore.jpg" /></a></span>
</div>

 </div>
					</div>
					<div id="myTab1_Content1" class="none"> 
					<asp:Repeater ID="rptbig" runat="server">
 <ItemTemplate>
		<div class="topics">
		<b><%# Eval("title")%> </b>
		<ul class="news">
		<asp:Repeater ID="rptsmall" DataSource='<%# bindsmall((int)Eval("id")) %>' runat="server">
        	<ItemTemplate>
		<li><a href="Solview_<%#Eval("type")%>_<%#Eval("id")%>.html"> <%#Eval("shopname").ToString().Length > 14 ? Eval("shopname").ToString().Substring(0, 14) + "..." : Eval("shopname").ToString()%></a></li>
		 </ItemTemplate>
 </asp:Repeater>
		</ul>
		<span style="float:right; margin-top:10px; margin-right:5px;"><a href="Sollist<%# Eval("id")%> .html"><img src="images/cmore.jpg" /></a></span>
		</div>
		</ItemTemplate>
 </asp:Repeater>
		
					</div>
		<div id="myTab1_Content2" class="none"> 
		<asp:Repeater ID="rptbign" runat="server">
 <ItemTemplate>
		<div class="topics">
		<b><%# Eval("title")%> </b>
		<ul class="news">
		<asp:Repeater ID="rptsmalln" DataSource='<%# bindsmalln((int)Eval("id")) %>' runat="server">
        	<ItemTemplate>
		<li><a href="Newsview_<%#Eval("type")%>_<%#Eval("id")%>.html"> <%#Eval("title").ToString().Length > 14 ? Eval("title").ToString().Substring(0, 14) + "..." : Eval("title").ToString()%></a></li>
		 </ItemTemplate>
 </asp:Repeater>
		</ul>
		<span style="float:right; margin-top:10px; margin-right:1px;"><a href="Newslist<%# Eval("id")%> .html"><img src="images/cmore.jpg" /></a></span>
		</div>
		</ItemTemplate>
 </asp:Repeater>
				  </div>
					<div id="myTab1_Content3" class="none"> 
		
		<asp:Repeater ID="Repeater3" runat="server">
 <ItemTemplate>
 <div class="topics">
	<div style="line-height:22px; padding:0px 5px;">			
<%#StringClass.htmlcuterSub(Eval("content").ToString())%>

</div>
<span style="float:right; margin-top:5px; margin-right:10px;"><a href="aboutus<%# Eval("id")%> .html"><img src="images/cmore.jpg" /></a></span>
</div>
</ItemTemplate>
 </asp:Repeater>
</div>
</div>
  </div>
			
<!--case-->
<div class="case">
<div class="ct"><a href="case.html"><img src="images/index_case_t.jpg" border="0" /></a></div>
<div class="scrolls">
<asp:Repeater ID="Repeater4" runat="server">
 <ItemTemplate>
<div class="casebg">
<img src="admin/<%#Eval("images")%>"  style=" width:208px; height:61px; border:1px solid #ECECEC; margin:8px 8px 4px;"/>
<div style="width:208px; height:24px; line-height:24px; border-bottom:1px solid #ECECEC; margin:0px 8px;">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="81%"><a href="caseview_<%#Eval("type")%>_<%#Eval("id")%>.html" style="font-size:14px; color:#A00709"><%#Eval("shopname")%></a></td>
    <td width="19%"><a href="caseview_<%#Eval("type")%>_<%#Eval("id")%>.html"><img src="images/cmore.jpg" border="0" /></a></td>
  </tr>
</table>
<p>发布日期:<%#Eval("addtime")%><br />
<%#Eval("info")%>
<p>
</div>
</div>
</ItemTemplate>
 </asp:Repeater>
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
