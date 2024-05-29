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
using System.Data.Common;

namespace global
{
    public partial class empresas : System.Web.UI.Page
    {
        public static void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                Database db = DatabaseFactory.CreateDatabase("ConnectionString");

                DbCommand command = db.GetSqlStringCommand(
                    "INSERT INTO OniPres_empresa (nome_fantasia, razao_social, cpf_cnpj, celular, email, cep, endereco, num, bairro, complemento, estado, cidade, [status]) " +
                    "VALUES (@nome, @razao, @cpf, @celular, @email, @cep, @endereco, @num, @bairro, @complemento, @estado, @cidade, @status)");

                db.AddInParameter(command, "@nome", DbType.String, txtNomeCliente.Text);
                db.AddInParameter(command, "@razao", DbType.String, txtRazaoSocial.Text);
                db.AddInParameter(command, "@cpf", DbType.String, txtCPFCNPJ.Text);  
                db.AddInParameter(command, "@celular", DbType.String, txtCelular.Text);
                db.AddInParameter(command, "@email", DbType.String, txtEmail.Text);
                db.AddInParameter(command, "@cep", DbType.String, txtCEP.Text);
                db.AddInParameter(command, "@endereco", DbType.String, txtEndereco.Text);
                db.AddInParameter(command, "@num", DbType.String, txtNum.Text);
                db.AddInParameter(command, "@bairro", DbType.String, txtBairro.Text);
                db.AddInParameter(command, "@complemento", DbType.String, txtComplemento.Text);
                db.AddInParameter(command, "@estado", DbType.String, ddlUF.SelectedValue);
                db.AddInParameter(command, "@cidade", DbType.String, txtCidade.Text);
                db.AddInParameter(command, "@status", DbType.String, ddlStatus.SelectedValue);

                db.ExecuteNonQuery(command);

                lblMensagem.Text = "Adicionado com sucesso!";

                LimparCampos();
            }
            catch (Exception ex)
            {
                lblMensagem.Text = "Erro ao adicionar: " + ex.Message;
            }
        }

        private void LimparCampos()
        {
            txtNomeCliente.Text = string.Empty;
            txtRazaoSocial.Text = string.Empty;
            txtCPFCNPJ.Text = string.Empty;
            txtCelular.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtCEP.Text = string.Empty;
            txtEndereco.Text = string.Empty;
            txtNum.Text = string.Empty;
            txtBairro.Text = string.Empty;
            txtComplemento.Text = string.Empty;
            ddlUF.SelectedIndex = 0;
            txtCidade.Text = string.Empty;
            ddlStatus.SelectedIndex = 0;
        }
    }
}