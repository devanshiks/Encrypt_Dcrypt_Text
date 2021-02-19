<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowAll.aspx.cs" Inherits="Encrypt_DecryptClient.ShowAll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
             background:linear-gradient(90deg, rgb(51, 255, 51,0.5) 29%, rgb(128, 223, 255,0.8) 100%);
        }
        #GridView1 {
            margin-top: 10vh;
            margin-left: 50vh;
        }
        #Button1{
            border-radius: 15px;
            background-color:#1C5E55;
            border : none;
            color : white;
            outline:none;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <div style="margin:10px">
        <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Back_Click" Height="30px" Width="100px" />
        </div>
        <div style="margin-top:10px; margin-left:85vh;">
        <asp:Label ID="Label1" runat="server" Text="" ForeColor="black" Font-Size="Larger"></asp:Label>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" 
                OnRowDeleting="GridView1_RowDeleting" DataKeyNames="Id"
                OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                OnRowUpdating="GridView1_RowUpdating" Height="300px" Width="763px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField HeaderText="Operations" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                </Columns>
                <EditRowStyle BackColor="#444444" ForeColor="White" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#00264d" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" cssClass="normal"/>
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
