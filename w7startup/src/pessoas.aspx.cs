using Microsoft.Practices.EnterpriseLibrary.Data;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.UI;
using System.Threading.Tasks;
using pix_dynamic_payload_generator.net;
using pix_dynamic_payload_generator.net.Requests.RequestServices;
using System.Runtime.InteropServices;
using evento.Model.FPIX;
using evento.Service;
using URL_Shortener;
using Newtonsoft.Json;
using System.Runtime.ConstrainedExecution;
using gerentefacil;

namespace global
{
    public partial class pessoas : System.Web.UI.Page
    {
        public static void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected async void btnSalvar_Click(object sender, EventArgs e)
        {
            Whatsapp dados = new Whatsapp();
            dados.senha = "Sqlw7@23w7";
            dados.email = "contato@w7startup.com.br";
            dados.nome = txtNomeCliente.Text;
            string txtURL = "https://gerarqrcodepix.com.br/api/v1?brcode=123213123213&tamanho=256";
            string url = EncurteURL.EncurtadorUrl(new Uri(txtURL));

            dados.numero = "55" + txtCelular.Text.Replace("(", "").Replace(")", "").Replace("-", "").Replace(" ", "");
            dados.clientId = "2b08Cl7ia6RxsNK2wqDdA2ov0LbSKOn4uat2I2qbYJd0jC4JjVlOFe";
            dados.mensagem = "Olá "+ txtNomeCliente.Text +" seu cadastro foi realizado com sucesso. Visualizar o qrcode de acesso: "+ url+". Obrigado.";

            await Zapweb.EnviarMensagem(dados);
        }

        protected void txtCEP_TextChanged(object sender, EventArgs e)
        {
            if (txtCEP.Text.Length > 8)
            {
                string cepnovo = txtCEP.Text.Replace("-", "");
                var info = cep.HttpPost("http://viacep.com.br/ws/" + cepnovo + "/json/");
                dynamic dados = JsonConvert.DeserializeObject<dynamic>(info);
                var end = dados["logradouro"];
                txtEndereco.Text = end.ToString();
                var bairro = dados["bairro"];
                txtBairro.Text = bairro.ToString();
                var cidade = dados["localidade"];
                txtCidade.Text = cidade.ToString();
                var uf = dados["uf"];
                ddlUF.SelectedValue = uf.ToString();
                txtNum.Focus();
            }
        }
    }
}