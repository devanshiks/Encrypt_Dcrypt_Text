<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Encrypt_DecryptClient.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
</head>
<body>
   
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Plain Text"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="Label2" runat="server" Text="Encrypted Text"></asp:Label>

        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Decrypted Text"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Encrypt" OnClick="Encryption_Click" />
            <asp:Button ID="Button2" runat="server" Text="Decrypt" OnClick="Decryption_Click" />
            <asp:Button ID="Button3" runat="server" Text="Add To Database" />
            <asp:Button ID="Button4" runat="server" Text="Show All" />
        </p>
    </form>
      
    </body>
</html>
