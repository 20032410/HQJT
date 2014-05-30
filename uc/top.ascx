<%@ Control Language="C#" AutoEventWireup="true" CodeFile="top.ascx.cs" Inherits="uc_top" %>
<LINK href="style/StyleS.css" type=text/css rel=stylesheet>
<SCRIPT>
<!--
    /*第一种形式 第二种形式 更换显示样式*/
    function setTab(name, cursel, n) {
        for (i = 1; i <= n; i++) {
            var menu = document.getElementById(name + i);
            var con = document.getElementById("con_" + name + "_" + i);
            menu.className = i == cursel ? "hover" : "";
            con.style.display = i == cursel ? "block" : "none";
        }
    }
//-->
</SCRIPT>
<div id="head">
<div class="sina"><img src="images/sina_weibo.jpg" /></div>
</div>
<!--menu-->
<div class="cle"></div>
<div id="topmenu">
<ul class=daohang_ul>
  <li onmouseover="this.style.background='url(images/menu/m1_hover.jpg) no-repeat'; " style="BACKGROUND: url(images/menu/m1.jpg) no-repeat; FLOAT: left; WIDTH: 100px; CURSOR: pointer; HEIGHT: 52px; line-height:52px;; text-align:center" onclick="window.location.href='Default.html'" onmouseout="this.style.background='url(images/menu/m1.jpg) no-repeat '; "></li>
  <li style="width:1px; float:left; padding-left:12px; padding-right:12x; overflow:hidden"><img src="images/menu/menu_line.jpg" /></li>
  <li onmouseover="this.style.background='url(images/menu/m2_hover.jpg) no-repeat'; document.getElementById('div_dh_ul2').style.display='block'"  style="BACKGROUND: url(images/menu/m2.jpg) no-repeat; FLOAT: left; WIDTH: 100px; CURSOR: pointer; HEIGHT: 52px; line-height:52px;" onclick="window.location.href='Products.html'" onmouseout="this.style.background='url(images/menu/m2.jpg) no-repeat'; document.getElementById('div_dh_ul2').style.display='none'">
 <div id=div_dh_ul2 style="border-bottom:1px solid #CA1C1E; border-left:1px solid #CA1C1E; border-right:1px solid #CA1C1E; DISPLAY: none;  BACKGROUND: #fff; margin:52px 0px 0px 0px;   WIDTH: 130px; POSITION: absolute; HEIGHT:110px; z-index:400">
        <ul style="WIDTH:100%; TEXT-AliGN: left">
          <li class=neirong_li>
		  <a href="Net.html">移动互联网</a>
         </li>
          <li class=neirong_li>
		  <a href="Sms.html">短信平台</a>
         </li>
        
         <li class=neirong_li>
		 <a href="Interaction.html">互动平台</a>
         </li>
         <li class=neirong_li>
		 <a href="Planar.html">移动二维码</a>
         </li>
          </ul>
		</div>
    </li>
	<li style="width:1px; float:left; padding-left:12px; padding-right:12px; overflow:hidden"><img src="images/menu/menu_line.jpg" /></li>
    <li onmouseover="this.style.background='url(images/menu/m3_hover.jpg) no-repeat'; " style="BACKGROUND: url(images/menu/m3.jpg) no-repeat; FLOAT: left; WIDTH: 100px; CURSOR: pointer; HEIGHT: 52px; line-height:52px;; text-align:center" onclick="window.location.href='Solution.html'" onmouseout="this.style.background='url(images/menu/m3.jpg) no-repeat '; "></li>
    <li style="width:1px; float:left; padding-left:12px; padding-right:12px; overflow:hidden"><img src="images/menu/menu_line.jpg" /></li>
    <li onmouseover="this.style.background='url(images/menu/m4_hover.jpg) no-repeat'; " style="BACKGROUND: url(images/menu/m4.jpg) no-repeat; FLOAT: left; WIDTH: 100px; CURSOR: pointer; HEIGHT: 52px; line-height:52px;; text-align:center" onclick="window.location.href='News.html'" onmouseout="this.style.background='url(images/menu/m4.jpg) no-repeat '; "></li>
    <li style="width:1px; float:left; padding-left:12px; padding-right:12px; overflow:hidden"><img src="images/menu/menu_line.jpg" /></li>
    <li onmouseover="this.style.background='url(images/menu/m5_hover.jpg) no-repeat'; " style="BACKGROUND: url(images/menu/m5.jpg) no-repeat; FLOAT: left; WIDTH: 100px; CURSOR: pointer; HEIGHT: 52px; line-height:52px;; text-align:center" onclick="window.location.href='Download.html'" onmouseout="this.style.background='url(images/menu/m5.jpg) no-repeat '; "></li>
    <li style="width:1px; float:left; padding-left:12px; padding-right:12px; overflow:hidden"><img src="images/menu/menu_line.jpg" /></li>
    <li onmouseover="this.style.background='url(images/menu/m6_hover.jpg) no-repeat'; " style="BACKGROUND: url(images/menu/m6.jpg) no-repeat; FLOAT: left; WIDTH: 100px; CURSOR: pointer; HEIGHT: 52px; line-height:52px;; text-align:center" onclick="window.location.href='Case.html'" onmouseout="this.style.background='url(images/menu/m6.jpg) no-repeat '; "></li>
    <li style="width:1px; float:left; padding-left:12px; padding-right:12px; overflow:hidden"><img src="images/menu/menu_line.jpg" /></li>
    <li onmouseover="this.style.background='url(images/menu/m7_hover.jpg) no-repeat'; " style="BACKGROUND: url(images/menu/m7.jpg) no-repeat; FLOAT: left; WIDTH: 100px; CURSOR: pointer; HEIGHT: 52px; line-height:52px;; text-align:center" onclick="window.location.href='Proxy.html'" onmouseout="this.style.background='url(images/menu/m7.jpg) no-repeat '; "></li>
    <li style="width:1px; float:left; padding-left:12px; padding-right:12px; overflow:hidden"><img src="images/menu/menu_line.jpg" /></li>
    <li onmouseover="this.style.background='url(images/menu/m8_hover.jpg) no-repeat'; " style="BACKGROUND: url(images/menu/m8.jpg) no-repeat; FLOAT: left; WIDTH: 100px; CURSOR: pointer; HEIGHT: 52px; line-height:52px;; text-align:center" onclick="window.location.href='Aboutus.html'" onmouseout="this.style.background='url(images/menu/m8.jpg) no-repeat '; "></li>
 </ul>
</div>
