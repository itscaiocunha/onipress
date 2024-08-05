
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
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace global
{
    public partial class blocos : System.Web.UI.Page
    {
        public static void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Database db = DatabaseFactory.CreateDatabase("ConnectionString");

            DbCommand command = db.GetSqlStringCommand(
                "INSERT INTO OniPres_bloco (nome, empresa, unidade, [status]) " +
                "VALUES (@nome, @empresa, @unidade, @status)");

            db.AddInParameter(command, "@nome", DbType.String, txtNomeCliente.Text);
            db.AddInParameter(command, "@empresa", DbType.String, ddlEmpresas.SelectedValue);
            db.AddInParameter(command, "@unidade", DbType.String, ddlUnidades.SelectedValue);
            db.AddInParameter(command, "@status", DbType.String, ddlStatus.SelectedValue);

            try
            {
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
            ddlEmpresas.SelectedIndex = 0;
            ddlUnidades.SelectedIndex = 0;
            ddlStatus.SelectedIndex = 0;
        }

        protected void lkbFiltro_Click(object sender, EventArgs e)
        {
            sdsDados.SelectCommand = "select nome, empresa, unidade from OniPres_bloco where status = 'Ativo' and nome like '%" + txtBuscar.Text + "%'";
            gdvDados.DataBind();
        }
    }
}