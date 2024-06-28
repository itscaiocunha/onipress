
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
//using evento.Service;
using URL_Shortener;
using Newtonsoft.Json;
using System.Runtime.ConstrainedExecution;
using gerentefacil;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace global
{
    public partial class pessoas : System.Web.UI.Page
    {
        public static void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Database db = DatabaseFactory.CreateDatabase("ConnectionString");

            DbCommand command = db.GetSqlStringCommand(
                "INSERT INTO OniPres_pessoa (nome, tipo_acesso, cpf, celular, email, empresa, unidade, bloco, dispositivo, [status]) " +
                "VALUES (@nome, @tipo, @cpf, @celular, @email, @empresa, @unidade, @bloco, @dispositivo, @status)");

            db.AddInParameter(command, "@nome", DbType.String, txtNomeCliente.Text);
            db.AddInParameter(command, "@tipo", DbType.String, txtTipo.Text);
            db.AddInParameter(command, "@cpf", DbType.String, txtCPFCNPJ.Text);
            db.AddInParameter(command, "@celular", DbType.String, txtCelular.Text);
            db.AddInParameter(command, "@email", DbType.String, txtEmail.Text);
            db.AddInParameter(command, "@empresa", DbType.String, txtCondominioEmpresa.Text);
            db.AddInParameter(command, "@unidade", DbType.String, txtUnidade.Text);
            db.AddInParameter(command, "@bloco", DbType.String, txtBloco.Text);
            db.AddInParameter(command, "@dispositivo", DbType.String, txtDispositivo.Text);
            db.AddInParameter(command, "@status", DbType.String, ddlStatus.SelectedValue);

            try
            {
                db.ExecuteNonQuery(command);

                lblMensagem.Text = "Adicionado com sucesso!";

                string mensagem = "Morador";

                if (txtTipo.Text == mensagem)
                {
                    //enviarMensagemMorador();
                }

                LimparCampos();
            }
            catch (Exception ex)
            {
                lblMensagem.Text = "Erro ao adicionar: " + ex.Message;
            }
        }

        //protected async void enviarMensagemMorador ()
        //{
        //    Whatsapp dados = new Whatsapp();
        //    dados.senha = "Sqlw7@23w7";
        //    dados.email = "contato@w7startup.com.br";
        //    dados.nome = txtNomeCliente.Text;
        //    string txtURL = "https://gerarqrcodepix.com.br/api/v1?brcode=123213123213&tamanho=256";
        //    string url = EncurteURL.EncurtadorUrl(new Uri(txtURL));

        //    dados.numero = "55" + txtCelular.Text.Replace("(", "").Replace(")", "").Replace("-", "").Replace(" ", "");
        //    dados.clientId = "2b08Cl7ia6RxsNK2wqDdA2ov0LbSKOn4uat2I2qbYJd0jC4JjVlOFe";
        //    dados.mensagem = "Olá " + txtNomeCliente.Text + " seu cadastro foi realizado com sucesso. Visualizar o qrcode de acesso: " + url + ". Obrigado.";

        //    await Zapweb.EnviarMensagem(dados);
        //}

        private void LimparCampos()
        {
            txtNomeCliente.Text = string.Empty;
            txtTipo.Text = string.Empty;
            txtCPFCNPJ.Text = string.Empty;
            txtCelular.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtCondominioEmpresa.Text = string.Empty;
            txtUnidade.Text = string.Empty;
            txtBloco.Text = string.Empty;
            txtDispositivo.Text = string.Empty;
            ddlStatus.SelectedIndex = 0;
        }
    }
}