using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mizhouse.Modelo;

namespace Mizhouse.Presentacion
{
	public partial class editar_cuenta_comite : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void guarda_Click(object sender, EventArgs e)
		{
			ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
			string lsURL = string.Empty;
			string correo = Request["correo"];
			string pss = Request["pss"];
			string nombre = Request["nombre"];
			string appat = Request["appat"];
			string apmat = Request["apmat"];
			string cel = Request["cel"];
			string tel = Request["tel"];
			Usuario u = cli.ConsultaPerfilPorCorreo(correo);
			lsURL = cli.ActualizaUsuario(u.ID_Usuario, nombre, appat, apmat, correo, cel, tel, u.Departamento, pss, u.Roles) ? "index.aspx" : "editar_cuenta_comite.aspx";
			Response.Redirect(lsURL);
		}

		protected void descarta_Click(object sender, EventArgs e)
		{
			Response.Redirect("editar_cuenta_comite.aspx");
		}

		protected void baja_Click(object sender, EventArgs e)
		{
			ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
			string lsURL = string.Empty;
			string correo = Request["correo"];
			string pss = Request["pss"];
			string nombre = Request["nombre"];
			string appat = Request["appat"];
			string apmat = Request["apmat"];
			string cel = Request["cel"];
			string tel = Request["tel"];
			Usuario u = cli.ConsultaPerfilPorCorreo(correo);

			lsURL = cli.DarDeBaja(u.ID_Usuario, nombre, appat, apmat, correo, cel, tel, u.Departamento, pss, u.Roles) ? "index.aspx" : "editar_cuenta_comite.aspx";

			Response.Redirect(lsURL);
		}
	}
}