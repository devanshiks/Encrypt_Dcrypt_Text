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

        }

        protected void Decryption_Click(object sender, EventArgs e)
        {
            ServiceReference1.Encrypt_DecryptService1Client sc = new ServiceReference1.Encrypt_DecryptService1Client();
            Label5.Text = sc.Decryption(Label3.Text);
        }
    }
}