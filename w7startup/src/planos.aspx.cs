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
    public partial class planos : System.Web.UI.Page
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
                    "INSERT INTO OniPres_planos (nome, valor, descricao, [status]) " +
                    "VALUES (@nome, @valor, @desc, @status)");

                db.AddInParameter(command, "@nome", DbType.String, txtNome.Text);
                db.AddInParameter(command, "@valor", DbType.String, txtValor.Text);
                db.AddInParameter(command, "@desc", DbType.String, txtDescricao.Text);
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
            txtNome.Text = string.Empty;
            txtValor.Text = string.Empty;
            txtDescricao.Text = string.Empty;
            ddlStatus.SelectedIndex = 0;
        }
    }
}