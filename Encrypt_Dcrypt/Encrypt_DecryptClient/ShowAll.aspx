<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowAll.aspx.cs" Inherits="Encrypt_DecryptClient.ShowAll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div style="margin:10px">
        <asp:Label ID="Label1" runat="server" Text="" ForeColor="Green" Font-Size="Larger"></asp:Label>
        </div>
    <form id="form1" runat="server">
        <div style="margin:10px">
        <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Back_Click" Height="52px" Width="113px" />
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" 
                OnRowDeleting="GridView1_RowDeleting" DataKeyNames="Id"
                OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                OnRowUpdating="GridView1_RowUpdating" Height="300px" Width="763px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField HeaderText="Operations" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
