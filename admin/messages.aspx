<%@ Page Language="C#" AutoEventWireup="true" CodeFile="messages.aspx.cs" Inherits="ccwl_admin_messages" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>����Ա����</title>

	 	   <link href="style/right.css" type="text/css" rel="stylesheet">
		<meta content="JavaScript" name="vs_defaultClientScript">
 
		 
    <link href="style/right.css" rel="stylesheet" type="text/css" />
 
		 
	</HEAD>
	<body ��>
		<form id="Form1" method="post" runat="server">

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#3E97B9"
                    BorderStyle="None" CellPadding="0" CellSpacing="1" DataKeyNames="id" GridLines="None"
                    OnRowDeleting="GridView1_RowDeleting" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="username" HeaderText="�û�">
                            <HeaderStyle CssClass="tb" />
                        </asp:BoundField>
                        <asp:BoundField DataField="addtime" HeaderText="ʱ��" >
                            <HeaderStyle CssClass="tb" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="�鿴">
                            <ItemTemplate>
                               ��  <a href="messages.aspx?ids= <%#Eval("id").ToString() %>">�鿴</a>
                            </ItemTemplate>
                            <HeaderStyle CssClass="tb" />
                        </asp:TemplateField>
                        <asp:CommandField DeleteText="&lt;div id=&quot;de&quot; onclick=&quot;JavaScript:return confirm('��ȷ��Ҫɾ��?')&quot;&gt;ɾ��&lt;/div&gt;"
                            HeaderText="ɾ��" ShowDeleteButton="True" >
                            <HeaderStyle CssClass="tb" />
                        </asp:CommandField>
                    </Columns>
                    <RowStyle HorizontalAlign="Center" />
                    <HeaderStyle BorderStyle="None" CssClass="tb" HorizontalAlign="Center" />
                </asp:GridView>
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" CustomInfoTextAlign="Center"
                    FirstPageText="��ҳ" HorizontalAlign="Center" LastPageText="���һҳ" NextPageText="��һҳ"
                    NumericButtonTextFormatString="[{0}]" OnPageChanging="AspNetPager1_PageChanging"
                    PrevPageText="��һҳ" UrlPaging="True" Width="100%">
                </webdiyer:AspNetPager>
            
            <asp:Panel ID="Panel1" runat="server"  Visible="false"  Width="100%">
                <table style="WIDTH: 100%; " cellSpacing="1" border="0" bgcolor="#3e97b9" cellpadding="0" >
                    <tr>
                        <td colspan="3" class="tb" align="left" style="text-align: left">
                            ������Ϣ</td>
                    </tr>
                      <tr>
                        <td colspan="3">
                            ���ò�Ʒ��<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            ������<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                  
<tr>
                        <td colspan="3">
                            �ֻ���<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="height: 18px">
                            QQ��<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                     
                 <tr>
                        <td colspan="3" style="height: 18px">
                            �绰��<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                      <tr>
                        <td colspan="3" style="height: 18px">
                            ��˾��<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                     <tr>
                        <td colspan="3">
                           ���ԣ�<asp:Literal ID="Literal1" runat="server"></asp:Literal></td>
                    </tr>
                   <tr>
                        <td colspan="3" style="height: 18px">
                            ��ַ��<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                     
                    
                     
                     
                    <tr>
                        <td colspan="3" align="center">
                        <a href="#" onclick="history.go(-1);" >[����]</a>
                        </td>
                    </tr>
                </table>
            </asp:Panel> 
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="18pt" ForeColor="Red"
                Text="���ޣ�" Visible="False"></asp:Label>
      
		</form>
	</body>
</HTML>

