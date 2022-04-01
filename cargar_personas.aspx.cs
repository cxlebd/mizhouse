using Mizhouse.Comunes.Util;
using Mizhouse.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mizhouse.Presentacion
{
	public partial class cargar_personas : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Usuario user = (Usuario)Session["Usuario"];
			if (user == null || user.Roles != 1)
			{
				Response.Redirect(Constantes.INDEX);
			}
		}

		protected void crear_Click(object sender, EventArgs e)
		{
			string route = Request["csv"];
			string nombre = Request["nombre"];
			string lsURL = string.Empty;

			ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();

			lsURL = cli.AsignaPerfiles(nombre,0,0,0,"","","", 0, CSV.LeerCSV(route)) ? "index.aspx" : "cargar_personas.aspx";
			Response.Redirect(lsURL);
		}
	}
}