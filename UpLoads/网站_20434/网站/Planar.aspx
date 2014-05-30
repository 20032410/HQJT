<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Planar.aspx.cs" Inherits="Planar" %>
<%@ Register Src="uc/top.ascx" TagName="top" TagPrefix="uc1" %>
<%@ Register Src="uc/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<%@ Register Src="uc/Planar_left.ascx" TagName="Planar_left" TagPrefix="uc3" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
<uc3:Planar_left ID="Planar_left" runat="server"></uc3:Planar_left>

<div class="nright">
<div class="nrtop"></div>
<div class="nrbg">
<div class="ntt">
<h2>移动二维码</h2>
<span>您当前位置：<a href="Default.html">网站首页</a>  >>  <a href="products.html">产品与服务</a>  >>  移动二维码</span></div>
<div class="pro1">
<asp:Repeater ID="Repeater1" runat="server" >
<ItemTemplate>
<dl>
<dt><a href="Planarview_<%#Eval("id")%>.html"><img src="admin/<%#Eval("images")%>" /></a></dt>
<dd class="tr_tit"><a href="Planarview_<%#Eval("id")%>.html"> <%#Eval("shopname") %></a></dd>
<dd><%#Eval("info") %> </dd>
<dd class="more"><a href="Planarview_<%#Eval("id")%>.html">>>查看详情</a></dd>
</dl>
</ItemTemplate>
</asp:Repeater>
</div>

<div style="height:24px; line-height:24px;  clear:both; padding-bottom:10px;  text-align:right"><webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="True" CssClass="anpager"
                                                CurrentPageButtonClass="cpb" CustomInfoClass="" CustomInfoStyle="" FirstPageText="首页"
                                                Height="24px" HorizontalAlign="Right" LastPageText="尾页" NextPageText="下一页" OnPageChanging="AspNetPager1_PageChanging"
                                                PageIndexBoxType="DropDownList" PrevPageText="上一页" ShowPageIndexBox="Always"
                                                Style="vertical-align: top" UrlPaging="True" Width="90%" PageSize="6" EnableUrlRewriting="true"
                                             UrlRewritePattern="./Planar{0}.html">
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