<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="ccwl_admin_left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>��̨����ϵͳ�������</title>
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
                            ϵͳ����</td>
                    </tr>
                </table>
                <div class="ml" id="left0">
                    <ul>
                        <li><a href="basicinfo.aspx" target="frmright">��վ������Ϣ</a></li>
                                               
                    </ul>
                </div>
                <div class="ml" id="left1" style="display: none;">
                    <ul>
                        <li><a href="addadmin.aspx" target="frmright">����Ա����</a></li>
                    </ul>
                </div>
                <div class="ml" id="left2" style="display: none;">
                     <ul>
                     
                      
                      <li><a href="addproduct.aspx" target="frmright">��Ʒ���</a></li>
                      <li><a href="product.aspx" target="frmright">��Ʒ����</a></li>
                      <li><a href="messages.aspx" target="frmright">�������ù���</a></li> 
                       
                        
                    </ul>
                </div>
                <div class="ml" id="left3" style="display: none;">
                  <ul>
                     
                      <li><a href="solution_type.aspx" target="frmright">�����������</a></li>
                      <li><a href="addsolution.aspx" target="frmright">����������</a></li>
                      <li><a href="solution.aspx" target="frmright">�����������</a></li>
                       
                        
                    </ul>
                </div>
                <div class="ml" id="left4" style="display: none;">
                     <ul>
                         <li><a href="News_type.aspx" target="frmright">������</a></li>
                         <li><a href="addactive.aspx" target="frmright">�������</a></li>
                         <li><a href="active.aspx" target="frmright">���Ź���</a></li>
           
                    </ul>
                </div>
                <div class="ml" id="left5" style="display: none;">
                    <ul>
                     
                      <ul>
                      <li><a href="Down_type.aspx" target="frmright">���ط���</a></li>
                      <li><a href="addDown.aspx" target="frmright">�������</a></li>
                      <li><a href="Down.aspx" target="frmright">���ع���</a></li>
                    </ul>
                       
                        
                    </ul>
                </div>
                 <div class="ml" id="left6" style="display: none;">
                    <ul>
                     
                    <ul>
                      <li><a href="Project_type.aspx" target="frmright">�ɹ���������</a></li>
                      <li><a href="addProject.aspx" target="frmright">�ɹ��������</a></li>
                      <li><a href="Project.aspx" target="frmright">�ɹ���������</a></li>
                    </ul>
                  
                        </ul>
                </div>           
                <div class="ml" id="left7" style="display: none;">
                    <ul>
                        
                        <li><a href="showactive.aspx?type=1" target="frmright">������Ϣ</a></li>
                        <li><a href="add_active.aspx?type=1" target="frmright">�����Ϣ</a></li>
           
                    </ul>
                </div>
        
                <div class="ml" id="left8" style="display: none;">
                    <ul>
                         <li><a href="showactive.aspx?type=2" target="frmright">������Ϣ</a></li>
                        <li><a href="add_active.aspx?type=2" target="frmright">�����Ϣ</a></li>
           
                    </ul>
                </div>

                  
                 <div class="ml" id="left9" style="display: none;">
                    <ul>
                        
                        <li><a href="send.aspx" target="frmright">�������ӹ���</a></li>
           
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
