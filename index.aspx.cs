using Mizhouse.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mizhouse.Presentacion
{
	public partial class inicio_sesion : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Session.Clear();
		}

		protected void ingresa_Click(object sender, EventArgs e)
		{
			ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
			string email = Page.Request["correo"];
			string pss = Page.Request["pss"];
			string lsURL = string.Empty;
			if (cli.InicioSesion(email, pss))
			{
				Usuario u = cli.ConsultaPerfilPorCorreo(email);
				switch (u.Roles)
				{
					case 1:
						lsURL = "cargar_personas.aspx";
						Session["Usuario"] = u;
						break;
					case 2:
						lsURL = "balance_administrador.aspx";
						Session["Usuario"] = u;
						break;
					case 3:
						lsURL = "balance_comite.html";
						Session["Usuario"] = u;
						break;
					case 4:
						lsURL = "balance_residente.html";
						Session["Usuario"] = u;
						break;
					default:
						lsURL = Constantes.INDEX;
						break;
				}
				Response.Redirect(lsURL, true);
			}
		}
	}
}