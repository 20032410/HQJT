<%@ Page Language="C#" AutoEventWireup="true" CodeFile="top.aspx.cs" Inherits="ccwl_admin_top" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>上海旭洲国际贸易有限公司CRM后台管理系统——头部</title>
<link href="style/top.css" type="text/css" rel="stylesheet">
</head>

<body>
<div id="top">
  <div id="logo">
     <div class="logo"><img src="images/logo.jpg"></div>
     <div class="logoright"><%--<%=Session["user"].ToString() %>--%>欢迎登录系统！ |<a href="loginout.aspx"  target="_top" onclick="return confirm('确定退出网站后台管理页面');">  安全退出</a></div> 
  </div>
   <div id="link">
      <ul>
		<li><a href="right.aspx" onclick="parent.frmleft.disl(0,'网站基本信息');" target="frmright"><span>网站基本信息</span></a></li>
		<li><a href="right.aspx" onclick="parent.frmleft.disl(1,'管理员设置');" target="frmright"><span>管理员设置</span></a></li>
		<li><a href="right.aspx" onclick="parent.frmleft.disl(2,'产品与服务管理');" target="frmright"><span>产品与服务管理</span></a></li>	
		 <li><a href="right.aspx" onclick="parent.frmleft.disl(3,'解决方案管理');" target="frmright"><span>解决方案管理</span></a></li>	
		 <li><a href="right.aspx" onclick="parent.frmleft.disl(4,'新闻中心管理');" target="frmright"><span>新闻中心管理</span></a></li>	
		  <li><a href="right.aspx" onclick="parent.frmleft.disl(5,'下载中心管理');" target="frmright"><span>下载中心管理</span></a></li>	
		    <li><a href="right.aspx" onclick="parent.frmleft.disl(6,'成功案例管理');" target="frmright"><span>成功案例管理</span></a></li>
		    <li><a href="right.aspx" onclick="parent.frmleft.disl(7,'代理加盟管理');" target="frmright"><span>代理加盟管理</span></a></li>
			      <li><a href="right.aspx" onclick="parent.frmleft.disl(8,'关于我们管理');" target="frmright"><span>关于我们管理</span></a></li>
			      <li><a href="right.aspx" onclick="parent.frmleft.disl(9,'友情链接管理');" target="frmright"><span>友情链接管理</span></a></li>	
			    							
	 </ul>
  </div>
</div>
</body>
</html>
