﻿
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
    public partial class dispositivos : System.Web.UI.Page
    {
        public static void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Database db = DatabaseFactory.CreateDatabase("ConnectionString");

            DbCommand command = db.GetSqlStringCommand(
                "INSERT INTO OniPres_dispostivo (nome, empresa, unidade, bloco, [status]) " +
                "VALUES (@nome, @empresa, @unidade, @bloco, @status)");

            db.AddInParameter(command, "@nome", DbType.String, txtNome.Text);
            db.AddInParameter(command, "@empresa", DbType.String, txtEmpresa.Text);
            db.AddInParameter(command, "@unidade", DbType.String, txtUnidade.Text);
            db.AddInParameter(command, "@bloco", DbType.String, txtBloco.Text);
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
            txtNome.Text = string.Empty;
            txtEmpresa.Text = string.Empty;
            txtUnidade.Text = string.Empty;
            txtBloco.Text = string.Empty;
            ddlStatus.SelectedIndex = 0;
        }
    }
}