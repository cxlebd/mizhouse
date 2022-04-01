using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mizhouse.Modelo;

namespace Mizhouse.Presentacion
{
    public partial class tramites_administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario u = (Usuario)Session["Usuario"];
            if (u == null || u.Roles != 2)
            {
                Response.Redirect(Constantes.INDEX);
            }
            ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
            tramitestabla.DataSource = cli.ConsultaTramites(u.ID_Usuario);
            tramitestabla.DataBind();
        }

        protected void levantar_Click(object sender, EventArgs e)
        {
            Response.Redirect("editar_tramite.aspx?id=0");
        }
    }
}