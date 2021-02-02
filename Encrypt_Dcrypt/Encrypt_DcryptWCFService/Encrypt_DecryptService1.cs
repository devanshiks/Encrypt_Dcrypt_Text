using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Encrypt_DecryptWCFService
{
    //Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Encrypt_DecryptDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False

    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in both code and config file together.
    public class Encrypt_DecryptService1 : IEncrypt_DecryptService1
    {
        static int key1 = 17;
        static int key2 = 20;
        public int multiplicativeInverse(int a, int n)
        {
            int t1 = 0, t2 = 1;
            int r1, r2, r, t, multiplicative;
            if (a > n)
            {
                r1 = a;
                r2 = n;
            }
            else
            {
                r1 = n;
                r2 = a;
            }
            while (r2 > 0)
            {
                int q = r1 / r2;
                r = r1 - q * r2;
                t = t1 - q * t2;
                r1 = r2;
                r2 = r;
                t1 = t2;
                t2 = t;
            }
            t = t1;
            int gcd = r1;
            if (gcd == 1)
            {
                if (t < 0)
                {
                    multiplicative = t % n;
                }
                else
                {
                    multiplicative = t;
                }
            }
            else
            {
                return -1;
            }
            if (multiplicative < 0)
            {
                multiplicative = multiplicative + n;
            }
            return multiplicative;
        }

        public string Decryption(string cipherText)
        {
            string originalText = "";
            int key1_inverse = multiplicativeInverse(key1, 26);
            for (int i = 0; i < cipherText.Length; i++)
            {
                int temp = ((key1_inverse * (cipherText[i] - 'a' - key2)) % 26);
                if (temp < 0)
                {
                    temp = temp + 26;
                }
                originalText = originalText +
                               (char)((temp + 'a'));
            }
            return originalText;
        }
        public string Encryption(string str)
        {
            string text = "";
            str = str.ToLower();
            foreach ( char x in str)
            {
                int plain_text = (int)x - 97;
                int cipher_text = (plain_text * key1 + key2) % 26 + 97;
                text += (char)cipher_text;
            }
            return text;
        }

        public CompositeType GetDataUsingDataContract(CompositeType composite)
        {
            if (composite == null)
            {
                throw new ArgumentNullException("composite");
            }
            if (composite.BoolValue)
            {
                composite.StringValue += "Suffix";
            }
            return composite;
        }

        public DataSet ShowAllData()
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from textDetails",
                @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Encrypt_DecryptDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            DataSet ds = new DataSet();
            da.Fill(ds,"textDetails");
            return ds;
        }
    }
}
