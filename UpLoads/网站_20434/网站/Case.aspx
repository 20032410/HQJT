<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Case.aspx.cs" Inherits="Case" %>
<%@ Register Src="uc/top.ascx" TagName="top" TagPrefix="uc1" %>
<%@ Register Src="uc/footer.ascx" TagName="footer" TagPrefix="uc2" %>
<%@ Register Src="uc/case_left.ascx" TagName="case_left" TagPrefix="uc3" %>
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
<uc3:case_left ID="case_left" runat="server"></uc3:case_left>
<div class="nright">
<div class="nrtop"></div>
<div class="nrbg">
<div class="ntt">
<h2>成功案例</h2>
<span>您当前位置：<a href="Default.html">网站首页</a>  >>  <a href="case.html">成功案例</a> </span>
</div>
<div class="ncase">
<asp:Repeater ID="Repeater1" runat="server" >
<ItemTemplate>

<div class="casebg2">
<a href="caseview_<%#Eval("type")%>_<%#Eval("id")%>.html"><img src="admin/<%#Eval("images")%>"  style=" width:208px; height:61px; border:1px solid #ECECEC; margin:8px 8px 4px;"/></a>
<div style="width:208px; height:24px; line-height:24px; border-bottom:1px solid #ECECEC; margin:0px 8px;">
<p align="center"><a href="caseview_<%#Eval("type")%>_<%#Eval("id")%>.html" style="font-size:14px; color:#A00709"><%#Eval("shopname")%></a></p>
<p>发布日期:<%#Eval("addtime")%><br />
<%#Eval("info")%>
<p>
</div>
</div>
</ItemTemplate>
</asp:Repeater>

</div>
<div style="height:24px; line-height:24px; padding-bottom:10px; clear:both; text-align:right"><webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="True" CssClass="anpager"
                                                CurrentPageButtonClass="cpb" CustomInfoClass="" CustomInfoStyle="" FirstPageText="首页"
                                                Height="24px" HorizontalAlign="Right" LastPageText="尾页" NextPageText="下一页" OnPageChanging="AspNetPager1_PageChanging"
                                                PageIndexBoxType="DropDownList" PrevPageText="上一页" ShowPageIndexBox="Always"
                                                Style="vertical-align: top"  UrlPaging="True" Width="90%" PageSize="12" EnableUrlRewriting="true"
                                             UrlRewritePattern="./case{0}.html">
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