using Encrypt_DecryptClient.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Encrypt_DecryptClient
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Encryption_Click(object sender, EventArgs e)
        {
            ServiceReference1.Encrypt_DecryptService1Client sc = new ServiceReference1.Encrypt_DecryptService1Client();
            Label3.Text = sc.Encryption(TextBox1.Text);
            Label6.Text = "";
            Label5.Text = "";
        }

        protected void Decryption_Click(object sender, EventArgs e)
        {
            ServiceReference1.Encrypt_DecryptService1Client sc = new ServiceReference1.Encrypt_DecryptService1Client();
            Label5.Text = sc.Decryption(Label3.Text);
            Label6.Text = "";
        }

        protected void AddToDatabase_Click(object sender, EventArgs e)
        {
            ServiceReference1.Encrypt_DecryptService1Client sc = new ServiceReference1.Encrypt_DecryptService1Client("BasicHttpBinding_IEncrypt_DecryptService1");
            TextDetails td = new TextDetails();
            td.Plaintext = TextBox1.Text;
            td.Encryptedtext = Label3.Text;
            td.Decryptedtext = Label5.Text;

            sc.AddData(td);
            Label6.Text = "Details Added Successfully!!!!";
        }

        protected void ShowAll_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowAll.aspx");
        }
    }
}