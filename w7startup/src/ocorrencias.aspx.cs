//
//using RestSharp;
//using System;
//using System.Collections.Generic;
//using System.Data;
//using System.IO;
//using System.Linq;
//using System.Net.Http;
//using System.Net.Http.Headers;
//using System.Web;
//using System.Web.UI;
//using System.Threading.Tasks;
//using pix_dynamic_payload_generator.net;
//using pix_dynamic_payload_generator.net.Requests.RequestServices;
//using System.Runtime.InteropServices;
//using System.Data.Common;

//namespace global
//{
//    public partial class ocorrencias : System.Web.UI.Page
//    {
//        public static void Page_Load(object sender, EventArgs e)
//        {
            
//        }

//        private void btnSalvar_Click(object sender, EventArgs e)
//        {
//            try
//            {
//                Database db = DatabaseFactory.CreateDatabase("ConnectionString");

//                DbCommand command = db.GetSqlStringCommand(
//                    "INSERT INTO OniPres_ocorrencia (tipo_ocorrencia, descricao) " +
//                    "VALUES (@tipo, @desc)");

//                db.AddInParameter(command, "@tipo", DbType.String, txtTipoOcorrencia.Text);
//                db.AddInParameter(command, "@desc", DbType.String, txtDescricao.Text);

//                db.ExecuteNonQuery(command);

//                lblMensagem.Text = "Adicionado com sucesso!";

//                LimparCampos();
//            }
//            catch (Exception ex)
//            {
//                lblMensagem.Text = "Erro ao adicionar: " + ex.Message;
//            }
//        }

//        private void LimparCampos()
//        {
//            txtDescricao.Text = string.Empty;
//            txtTipoOcorrencia.Text = string.Empty;
//        }
//    }
//}