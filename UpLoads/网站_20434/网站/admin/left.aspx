<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="ccwl_admin_left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>后台管理系统——左边</title>
    <link href="style/left.css" type="text/css" rel="stylesheet">

    <script type="text/javascript">
<!--
	function disl(n,content){
		for (var i=0;i<10;i++)
		{
			if (!document.getElementById("left"+i)) return;			
			document.getElementById("left"+i).style.display="none";
		}
		document.getElementById("left"+n).style.display="";
		document.getElementById("title").innerHTML=content;
		parent.document.getElementById("title").innerHTML=content;
	}
//-->
    </script>

</head>
<body>
    <table width="174" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td valign="top" background="images/l_03.jpg">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="16">
                            <img src="images/l_01.jpg" width="174" height="16" alt="" /></td>
                    </tr>
                    <tr>
                        <td width="174" height="27" background="images/l_02.jpg" align="left" class="f1"
                            id="title">
                            系统管理</td>
                    </tr>
                </table>
                <div class="ml" id="left0">
                    <ul>
                        <li><a href="basicinfo.aspx" target="frmright">网站基本信息</a></li>
                                               
                    </ul>
                </div>
                <div class="ml" id="left1" style="display: none;">
                    <ul>
                        <li><a href="addadmin.aspx" target="frmright">管理员设置</a></li>
                    </ul>
                </div>
                <div class="ml" id="left2" style="display: none;">
                     <ul>
                     
                      
                      <li><a href="addproduct.aspx" target="frmright">产品添加</a></li>
                      <li><a href="product.aspx" target="frmright">产品管理</a></li>
                      <li><a href="messages.aspx" target="frmright">在线试用管理</a></li> 
                       
                        
                    </ul>
                </div>
                <div class="ml" id="left3" style="display: none;">
                  <ul>
                     
                      <li><a href="solution_type.aspx" target="frmright">解决方案分类</a></li>
                      <li><a href="addsolution.aspx" target="frmright">解决方案添加</a></li>
                      <li><a href="solution.aspx" target="frmright">解决方案管理</a></li>
                       
                        
                    </ul>
                </div>
                <div class="ml" id="left4" style="display: none;">
                     <ul>
                         <li><a href="News_type.aspx" target="frmright">类别管理</a></li>
                         <li><a href="addactive.aspx" target="frmright">新闻添加</a></li>
                         <li><a href="active.aspx" target="frmright">新闻管理</a></li>
           
                    </ul>
                </div>
                <div class="ml" id="left5" style="display: none;">
                    <ul>
                     
                      <ul>
                      <li><a href="Down_type.aspx" target="frmright">下载分类</a></li>
                      <li><a href="addDown.aspx" target="frmright">下载添加</a></li>
                      <li><a href="Down.aspx" target="frmright">下载管理</a></li>
                    </ul>
                       
                        
                    </ul>
                </div>
                 <div class="ml" id="left6" style="display: none;">
                    <ul>
                     
                    <ul>
                      <li><a href="Project_type.aspx" target="frmright">成功案例分类</a></li>
                      <li><a href="addProject.aspx" target="frmright">成功案例添加</a></li>
                      <li><a href="Project.aspx" target="frmright">成功案例管理</a></li>
                    </ul>
                  
                        </ul>
                </div>           
                <div class="ml" id="left7" style="display: none;">
                    <ul>
                        
                        <li><a href="showactive.aspx?type=1" target="frmright">管理信息</a></li>
                        <li><a href="add_active.aspx?type=1" target="frmright">添加信息</a></li>
           
                    </ul>
                </div>
        
                <div class="ml" id="left8" style="display: none;">
                    <ul>
                         <li><a href="showactive.aspx?type=2" target="frmright">管理信息</a></li>
                        <li><a href="add_active.aspx?type=2" target="frmright">添加信息</a></li>
           
                    </ul>
                </div>

                  
                 <div class="ml" id="left9" style="display: none;">
                    <ul>
                        
                        <li><a href="send.aspx" target="frmright">友情链接管理</a></li>
           
                    </ul>
                </div>                   
                    </ul>
                </div>
            </td>
        </tr>
        <tr>
            <td height="16" valign="bottom" background="images/l_03.jpg">
                <img src="images/l_04.jpg" width="174" height="16" alt="" /></td>
        </tr>
    </table>
</body>
</html>
