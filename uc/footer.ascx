<%@ Control Language="C#" AutoEventWireup="true" CodeFile="footer.ascx.cs" Inherits="uc_footer" %>
<!--smenu-->
<div id="footmenu"><a href="Default.html">首 页</a> | <a href="Sms.html">产品与服务</a> | <a href="Solution.html">解决方案</a> | <a href="News.html">新闻中心</a> | <a href="Download.html">下载中心</a> | <a href="Case.html">成功案例</a> | <a href="Proxy.html">代理加盟</a> | <a href="Aboutus.html">关于我们</a></div>
<div id="footer">
友情链接： <asp:Repeater ID="frdlink" runat="server">
<ItemTemplate>
<a href="<%#Eval("moneys") %>" target="_blank"><%#Eval("username")%></a> 
 </ItemTemplate>
</asp:Repeater> 
<br />    
代申请短信通道|开发短信平台|八优短信网|企业短信平台|企业短信通|上海短信平台|上海短信通知|短信通知|短信平台| 八优短信网V1.0|上海八优信息科技有限公司<br />
经营许可证编号 沪ICP备10022037号 上海八优信息科技有限公司版权所有    
</div>