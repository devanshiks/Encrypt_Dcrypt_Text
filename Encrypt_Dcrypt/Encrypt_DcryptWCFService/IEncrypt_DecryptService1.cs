﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Encrypt_DecryptWCFService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IEncrypt_DecryptService1
    {
        [OperationContract]
        string Encryption(string str);

        [OperationContract]
        string Decryption(string cipherText);

        [OperationContract]
        bool AddData(TextDetails td);

        [OperationContract]
        [FaultContract(typeof(MyException))]
        bool DeleteTextDetail(int id);

        [OperationContract]
        [FaultContract(typeof(MyException))]
        TextDetails GetData(int id);

        [OperationContract]
        [FaultContract(typeof(MyException))]
        TextDetails UpdateTextDetail(TextDetails td);

        [OperationContract]
        DataSet ShowAllData();

        [OperationContract]
        CompositeType GetDataUsingDataContract(CompositeType composite);

        // TODO: Add your service operations here
    }

    [DataContract]
    public class TextDetails
    {
        int id;
        string plaintext;
        string encryptedtext;
        string decryptedtext;

        [DataMember]
        public int ID
        {
            get { return id; }
            set { id = value; }
        }

        [DataMember]
        public string Plaintext
        {
            get { return plaintext; }
            set { plaintext = value; }
        }

        [DataMember]
        public string Encryptedtext
        {
            get { return encryptedtext; }
            set { encryptedtext = value; }
        }

        [DataMember]
        public string Decryptedtext
        {
            get { return decryptedtext; }
            set { decryptedtext = value; }
        }
    }

    [DataContract]
    public class MyException
    {
        private string strReason = "Some error occured!";

        [DataMember]
        public string Reason
        {
            get { return strReason; }
            set { strReason = value; }
        }
    }

    // Use a data contract as illustrated in the sample below to add composite types to service operations.
    // You can add XSD files into the project. After building the project, you can directly use the data types defined there, with the namespace "Encrypt_DcryptWCFService.ContractType".
    [DataContract]
    public class CompositeType
    {
        bool boolValue = true;
        string stringValue = "Hello ";

        [DataMember]
        public bool BoolValue
        {
            get { return boolValue; }
            set { boolValue = value; }
        }

        [DataMember]
        public string StringValue
        {
            get { return stringValue; }
            set { stringValue = value; }
        }
    }
}
