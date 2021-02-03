using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;

namespace Encrypt_DecryptWCFHost
{
    class Program
    {
        static void Main( )
        {
            ServiceHost host;
            Uri http = new Uri("http://localhost:8080/Encrypt_DecryptService1");
            host = new ServiceHost(typeof(Encrypt_DecryptWCFService.Encrypt_DecryptService1), http);
            host.Open();
            Console.WriteLine("Hosted.....");
            Console.ReadLine();
        }
    }
}
