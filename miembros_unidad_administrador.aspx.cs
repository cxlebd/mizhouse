using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mizhouse.Modelo;
using Mizhouse.Repositorio;

namespace Mizhouse.Presentacion
{
	public partial class miembros_unidad_administrador : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Usuario user = (Usuario)Session["Usuario"];
            if (user == null || user.Roles != 2)
            {
				Response.Redirect(Constantes.INDEX);
            }
			ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
			miembrostabla.DataSource = cli.ConsultaUsuarios(user.ID_Usuario);
			miembrostabla.DataBind();
		}
	}
}