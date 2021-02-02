using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Encrypt_DcryptWCFService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in both code and config file together.
    public class Encrypt_DcryptService1 : IEncrypt_DcryptService1
    {
        public string Encryption(string str, int key1, int key2)
        {
            string text = "";
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
    }
}
