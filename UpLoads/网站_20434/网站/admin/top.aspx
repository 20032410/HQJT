<%@ Page Language="C#" AutoEventWireup="true" CodeFile="top.aspx.cs" Inherits="ccwl_admin_top" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�Ϻ����޹���ó�����޹�˾CRM��̨����ϵͳ����ͷ��</title>
<link href="style/top.css" type="text/css" rel="stylesheet">
</head>

<body>
<div id="top">
  <div id="logo">
     <div class="logo"><img src="images/logo.jpg"></div>
     <div class="logoright"><%--<%=Session["user"].ToString() %>--%>��ӭ��¼ϵͳ�� |<a href="loginout.aspx"  target="_top" onclick="return confirm('ȷ���˳���վ��̨����ҳ��');">  ��ȫ�˳�</a></div> 
  </div>
   <div id="link">
      <ul>
		<li><a href="right.aspx" onclick="parent.frmleft.disl(0,'��վ������Ϣ');" target="frmright"><span>��վ������Ϣ</span></a></li>
		<li><a href="right.aspx" onclick="parent.frmleft.disl(1,'����Ա����');" target="frmright"><span>����Ա����</span></a></li>
		<li><a href="right.aspx" onclick="parent.frmleft.disl(2,'��Ʒ��������');" target="frmright"><span>��Ʒ��������</span></a></li>	
		 <li><a href="right.aspx" onclick="parent.frmleft.disl(3,'�����������');" target="frmright"><span>�����������</span></a></li>	
		 <li><a href="right.aspx" onclick="parent.frmleft.disl(4,'�������Ĺ���');" target="frmright"><span>�������Ĺ���</span></a></li>	
		  <li><a href="right.aspx" onclick="parent.frmleft.disl(5,'�������Ĺ���');" target="frmright"><span>�������Ĺ���</span></a></li>	
		    <li><a href="right.aspx" onclick="parent.frmleft.disl(6,'�ɹ���������');" target="frmright"><span>�ɹ���������</span></a></li>
		    <li><a href="right.aspx" onclick="parent.frmleft.disl(7,'������˹���');" target="frmright"><span>������˹���</span></a></li>
			      <li><a href="right.aspx" onclick="parent.frmleft.disl(8,'�������ǹ���');" target="frmright"><span>�������ǹ���</span></a></li>
			      <li><a href="right.aspx" onclick="parent.frmleft.disl(9,'�������ӹ���');" target="frmright"><span>�������ӹ���</span></a></li>	
			    							
	 </ul>
  </div>
</div>
</body>
</html>
