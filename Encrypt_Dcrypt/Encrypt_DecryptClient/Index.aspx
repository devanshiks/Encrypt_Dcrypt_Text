<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Encrypt_DecryptClient.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
    
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
    <style>
        body{
            background:linear-gradient(90deg, rgb(51, 255, 51,0.5) 29%, rgb(128, 223, 255,0.8) 100%);
            font-family:cursive;
            font-size:25px;
        }
        .form-control {
      position: relative;
      border-radius: 0;
      border-width: 0 0 1px;
      height: auto;
      padding: 3px 0 5px;
      color:black;
      &:focus {
        box-shadow: none;
        border:none;
        }
        }
        .btn {
    border:none;
  border-radius: 28px;
  color: #fafafa;
  background: #127fc7;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
}
        .btn:hover {
 background: #00a6ff;
  background-image: linear-gradient(to bottom, #00a6ff, #00e7f7);
  text-decoration: none;
  border:none;
}
    </style>
<body>
      <center>
      <div class="container">
   
    <form id="form1" runat="server">
        <div class="card py-4" style="background:linear-gradient(90deg, rgb(51, 255, 51,0.7) 25%, rgb(128, 223, 255) 100%);width: 70%;border:3px solid #0F7382;
border-radius: 19px; border-radius: 40px;margin-top:200px; ">
         <div class="card-body">
          
           <div class="row py-2">
                    <div class="col ">
            <asp:Label ID="Label1" runat="server" Text="Plain Text:"></asp:Label>
                    </div>
               <div class="col">
            <asp:TextBox ID="TextBox1" class="form-control" runat="server" style="border-bottom:1px solid black;background-color:inherit;"></asp:TextBox>
               </div>
               </div>
        <div class="row py-2">
                    <div class="col d-flex justify-content-center">
        <asp:Label ID="Label2" runat="server" Text="Encrypted Text:"></asp:Label>
                  </div>
               <div class="col d-flex justify-content-start">
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                   </div>
               </div>
              <div class="row py-2">
                    <div class="col">
            <asp:Label ID="Label4" runat="server" Text="Decrypted Text:"></asp:Label>
               </div>
               <div class="col d-flex justify-content-start">
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                 </div>
               </div>
        <div class="row my-4">
            <div class="col ml-5 d-flex justify-content-end">
            <asp:Button ID="Button1" runat="server"  class="btn btn-primary" Text="Encrypt" OnClick="Encryption_Click" />
          </div>
          <div class="col">
            <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="Decrypt" OnClick="Decryption_Click" />
           </div>
           <div class="col mr-5  d-flex justify-content-start">
            <asp:Button ID="Button3" runat="server" class="btn btn-primary" Text="Add To Database" OnClick="AddToDatabase_Click" />
           </div>
            </div>
               <div class="row">
            <div class="col">
            <asp:Button ID="Button4" runat="server" class="btn btn-primary" Text="Show All" OnClick="ShowAll_Click" />
            </div> 
         </div>      
            </div>
            </div>
        <asp:Label ID="Label6" runat="server" Text="" ForeColor="Green" Font-Bold="True"></asp:Label>
    </form>
      </div>
          </center>
    </body>
</html>
