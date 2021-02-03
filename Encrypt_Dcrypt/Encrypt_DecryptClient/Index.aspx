<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Encrypt_DecryptClient.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
</head>
<body>
   
    <form id="form1" runat="server">
        <table>
            <tr>
                <td colspan="2">
            <asp:Label ID="Label1" runat="server" Text="Plain Text:"></asp:Label>
                    </td>
                <td colspan="2">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                </tr>
        
            <tr>
                <td colspan="2">
        <asp:Label ID="Label2" runat="server" Text="Encrypted Text:"></asp:Label>
                    </td>

                <td colspan="2">
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
        <tr>
            <td colspan="2">
            <asp:Label ID="Label4" runat="server" Text="Decrypted Text:"></asp:Label>
                </td>
            <td colspan="2">
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                </td>
        </tr>
        <tr>
            <td>
            <asp:Button ID="Button1" runat="server" Text="Encrypt" OnClick="Encryption_Click" />
                </td>
            <td>
            <asp:Button ID="Button2" runat="server" Text="Decrypt" OnClick="Decryption_Click" />
                </td>
            <td>
            <asp:Button ID="Button3" runat="server" Text="Add To Database" OnClick="AddToDatabase_Click" />
                </td>
            <td>
            <asp:Button ID="Button4" runat="server" Text="Show All" />
                </td>
        </tr>
            <tr>
                <td colspan="4">
        <asp:Label ID="Label6" runat="server" Text="" ForeColor="Green" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
            </table>
    </form>
      
    </body>
</html>
