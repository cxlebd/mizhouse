using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mizhouse.Modelo;
namespace Mizhouse.Presentacion
{
    public partial class base_solicitudes_administardor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario user = (Usuario)Session["Usuario"];
            if (user == null || user.Roles != 2)
            {
                Response.Redirect(Constantes.INDEX);
            }
            ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
            tablasoli.DataSource = cli.ConsultaSolicitudes(user.ID_Usuario);
            tablasoli.DataBind();
        }

        protected void generar_Click(object sender, EventArgs e)
        {
            Response.Redirect($"editar_solicitud_admin.aspx?id=0");
        }
    }
}