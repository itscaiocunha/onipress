using Newtonsoft.Json;
using RestSharp;
using System;
using System.Configuration;
using System.Net;
using System.Security.Cryptography.X509Certificates;

namespace GerenteFacil.Web.Host.iugu
{
    public class Clientes
    {
        public static readonly string apiToken = ConfigurationManager.AppSettings["apitoken"];
        public static string BASEURRL = @"https://api.iugu.com/v1/customers?api_token=" + apiToken + "";

        public static Clientes criar_clientes()
        {
            var client = new RestClient($"{BASEURRL}");
            var request = new RestRequest(Method.POST);
            request.AddHeader("Accept", "application/json");
            Clientes dadoscliente = new Clientes();
            dadoscliente.email = "eduardo.marques892@hotmail.com";
            dadoscliente.name = "Eduardo";
            dadoscliente.cpf_cnpj = "19881867000121";
            dadoscliente.cc_emails = "eduardo.marques892@hotmail.com";
            dadoscliente.zip_code = "13870180";
            dadoscliente.number = "52";
            dadoscliente.street = "Rua Gabriel Ferreira";
            dadoscliente.city = "São João da Boa Vista";
            dadoscliente.state = "SP";
            dadoscliente.district = "Centro";
            var env = dadoscliente.toCreate();
            request.AddParameter(
                "application/json",
                env,
                ParameterType.RequestBody);

            IRestResponse response = client.Execute(request);

            //if (response.StatusCode != HttpStatusCode.Created)
            //    throw new Exception($"{response.StatusCode} - {response.StatusDescription}");

            return JsonConvert.DeserializeObject<Clientes>(response.Content);
        }

        public string idcliente { get; set; }
        public string email { get; set; }
        public string name { get; set; }
        public string cpf_cnpj { get; set; }
        public string cc_emails { get; set; }
        public string zip_code { get; set; }
        public string number { get; set; }
        public string street { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public string district { get; set; }

        internal string toCreate()
        {
            var obj = new
            {
                this.email,
                this.name,
                this.cpf_cnpj,
                this.cc_emails,
                this.zip_code,
                this.number,
                this.street,
                this.city,
                this.state,
                this.district
            };
            return JsonConvert.SerializeObject(obj);
        }
    }
}
