<%@ Page Language="C#" AutoEventWireup="true" CodeFile="send.aspx.cs" Inherits="admin_send" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>友情链接管理</title>

	 	   <link href="style/right.css" type="text/css" rel="stylesheet">
		<meta content="JavaScript" name="vs_defaultClientScript">
 
		 
	</HEAD>
	<body 　>
		<form id="Form1" method="post" runat="server">
			
			
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Width="100%" BorderStyle="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="id" BackColor="#3E97B9" CellPadding="0" CellSpacing="1" GridLines="None">
                <Columns >
                    <asp:BoundField DataField="id" HeaderText="编号" ReadOnly="True" >
                        <HeaderStyle CssClass="tb" />
                        
                    </asp:BoundField>
                    <asp:BoundField DataField="username" HeaderText="标题" >
                        <ControlStyle CssClass="inpt" />
                        <HeaderStyle CssClass="tb" />
                    </asp:BoundField>
                    <asp:BoundField DataField="moneys" HeaderText="网址" >
                        <ControlStyle Width="220px" CssClass="inpt" />
                        <HeaderStyle CssClass="tb" />
                    </asp:BoundField>
                    <asp:CommandField HeaderText="修改" ShowEditButton="True"  UpdateText="修改"  EditText="修改"  CancelText="取消">
                        <HeaderStyle CssClass="tb" />
                    </asp:CommandField>
                    <asp:CommandField HeaderText="删除" DeleteText="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('你确定要删除?')&quot;&gt;删除&lt;/div&gt;" ShowDeleteButton="True" >
                        <HeaderStyle CssClass="tb" />
                    </asp:CommandField>
                </Columns>
                <RowStyle HorizontalAlign="Center" />
                <HeaderStyle HorizontalAlign="Center" CssClass="tb" BorderStyle="None"   />
            </asp:GridView>
            <br />
            <TABLE   style="WIDTH: 100%; " cellSpacing="1" border="0" bgcolor="#3e97b9" cellpadding="0" >
				  
				<TR class="title"  >
					<TD colSpan="2" align="left" class="tb"  style="height: 20px; text-align: left;">
                       <strong>友情链接管理</strong>
					</TD>
				</TR>
				<TR  >
					<TD style="  HEIGHT: 27px; text-align: left;" align="right" colspan="2">
                        标题：<asp:textbox id="adname" runat="server" Width="152px" BorderColor="#E0E0E0" BorderStyle="Solid" CssClass="inpt"></asp:textbox></TD>
				</TR>
				<TR   >
					<TD style="  HEIGHT: 27px; text-align: left;" align="right" colspan="2">
                        地址：<asp:textbox id="pass" runat="server" Width="252px" BackColor="White" BorderColor="#E0E0E0" BorderStyle="Solid" CssClass="inpt"></asp:textbox></TD>
				</TR>
				<TR   align="center" style=" font-family: 宋体">
					<TD colSpan="2" height="40">
						<DIV align="left">&nbsp;<FONT face="宋体"> 
                            &nbsp; &nbsp; &nbsp; &nbsp; </FONT><asp:button id="Button1" runat="server" Text="添 加" onclick="Button1_Click" CssClass="button_on"></asp:button><FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:button id="Button2" runat="server" Text="重 置" CausesValidation="False" onclick="Button2_Click" CssClass="button_on"></asp:button>&nbsp;&nbsp;</FONT>
						</DIV>
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
