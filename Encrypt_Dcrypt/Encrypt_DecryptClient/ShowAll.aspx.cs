using Encrypt_DecryptClient.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Encrypt_DecryptClient
{
    public partial class ShowAll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindData();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindData();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            ServiceReference1.Encrypt_DecryptService1Client sc = new ServiceReference1.Encrypt_DecryptService1Client("BasicHttpBinding_IEncrypt_DecryptService1");

            int ID = (int)e.Keys["Id"];
            TextDetails td = new TextDetails();
            string plainText = (string)e.NewValues["plaintext"];
            string encryptedText = (string)e.NewValues["encryptedtext"];
            string decryptedText = (string)e.NewValues["decryptedtext"];
            
            td.ID = ID;
            string encrypt = sc.Encryption(plainText);
            string decrypt = sc.Decryption(encrypt);
            td.Plaintext = plainText;
            td.Encryptedtext = encrypt;
            td.Decryptedtext = decrypt;
            sc.UpdateTextDetail(td);
            Label1.Text = "Data Updated Successfully!!!";
            GridView1.EditIndex = -1;
            BindData();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            ServiceReference1.Encrypt_DecryptService1Client sc = new ServiceReference1.Encrypt_DecryptService1Client("BasicHttpBinding_IEncrypt_DecryptService1");

            int ID = (int)e.Keys["Id"];
            sc.DeleteTextDetail(ID);
            Label1.Text = "Data Deleted Successfully!!!";
            BindData();
        }

        private void BindData()
        {
            ServiceReference1.Encrypt_DecryptService1Client sc = new ServiceReference1.Encrypt_DecryptService1Client("BasicHttpBinding_IEncrypt_DecryptService1");

            DataSet ds = sc.ShowAllData();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}