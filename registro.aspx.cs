using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mizhouse.Presentacion
{
	public partial class registro : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Session.Clear();
		}

		protected void ingresar_Click(object sender, EventArgs e)
		{
			ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();

			string correo = Request["correo"];
			string pss = Request["pss"];
			string depto = Request["depto"];
			int rol = int.Parse(Request["rol"]);
			string nombre = Request["nombre"];
			string appat = Request["appat"];
			string apmat = Request["apmat"];
			string cel = Request["cel"];
			string tel = Request["tel"];
			string lsURL = string.Empty;

			if (!cli.CrearCuenta(nombre, appat, apmat, correo, cel, tel, depto, pss, rol))
			{
				lsURL = "registro.aspx";
			}
			else
			{
				lsURL = "index.aspx";
			}
			Response.Redirect(lsURL);
		}
	}
}