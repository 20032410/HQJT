<%@ Page Language="C#" AutoEventWireup="true" CodeFile="send.aspx.cs" Inherits="admin_send" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>�������ӹ���</title>

	 	   <link href="style/right.css" type="text/css" rel="stylesheet">
		<meta content="JavaScript" name="vs_defaultClientScript">
 
		 
	</HEAD>
	<body ��>
		<form id="Form1" method="post" runat="server">
			
			
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  Width="100%" BorderStyle="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="id" BackColor="#3E97B9" CellPadding="0" CellSpacing="1" GridLines="None">
                <Columns >
                    <asp:BoundField DataField="id" HeaderText="���" ReadOnly="True" >
                        <HeaderStyle CssClass="tb" />
                        
                    </asp:BoundField>
                    <asp:BoundField DataField="username" HeaderText="����" >
                        <ControlStyle CssClass="inpt" />
                        <HeaderStyle CssClass="tb" />
                    </asp:BoundField>
                    <asp:BoundField DataField="moneys" HeaderText="��ַ" >
                        <ControlStyle Width="220px" CssClass="inpt" />
                        <HeaderStyle CssClass="tb" />
                    </asp:BoundField>
                    <asp:CommandField HeaderText="�޸�" ShowEditButton="True"  UpdateText="�޸�"  EditText="�޸�"  CancelText="ȡ��">
                        <HeaderStyle CssClass="tb" />
                    </asp:CommandField>
                    <asp:CommandField HeaderText="ɾ��" DeleteText="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('��ȷ��Ҫɾ��?')&quot;&gt;ɾ��&lt;/div&gt;" ShowDeleteButton="True" >
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
                       <strong>�������ӹ���</strong>
					</TD>
				</TR>
				<TR  >
					<TD style="  HEIGHT: 27px; text-align: left;" align="right" colspan="2">
                        ���⣺<asp:textbox id="adname" runat="server" Width="152px" BorderColor="#E0E0E0" BorderStyle="Solid" CssClass="inpt"></asp:textbox></TD>
				</TR>
				<TR   >
					<TD style="  HEIGHT: 27px; text-align: left;" align="right" colspan="2">
                        ��ַ��<asp:textbox id="pass" runat="server" Width="252px" BackColor="White" BorderColor="#E0E0E0" BorderStyle="Solid" CssClass="inpt"></asp:textbox></TD>
				</TR>
				<TR   align="center" style=" font-family: ����">
					<TD colSpan="2" height="40">
						<DIV align="left">&nbsp;<FONT face="����"> 
                            &nbsp; &nbsp; &nbsp; &nbsp; </FONT><asp:button id="Button1" runat="server" Text="�� ��" onclick="Button1_Click" CssClass="button_on"></asp:button><FONT face="����">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:button id="Button2" runat="server" Text="�� ��" CausesValidation="False" onclick="Button2_Click" CssClass="button_on"></asp:button>&nbsp;&nbsp;</FONT>
						</DIV>
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>
