
using Microsoft.Practices.EnterpriseLibrary.Common;
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
using Microsoft.Practices.EnterpriseLibrary.Common.Configuration;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace global
{
    public partial class login1 : System.Web.UI.Page
    {
        public static void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {

            Response.Redirect("dashboard.aspx", true);

            string cript = Criptografia.Encrypt(txtSenha.Text).Replace("+", "=");

            using (IDataReader reader1 = DatabaseFactory.CreateDatabase("ConnectionString").ExecuteReader(CommandType.Text,
                    "select * from OniPres_usuario where status = 'ATIVO' and email = '" + txtEmail + "'"))
            {
                if (reader1.Read())
                {
                    Response.Redirect("dashboard.aspx", true);
                }
            }
        }
    }
}