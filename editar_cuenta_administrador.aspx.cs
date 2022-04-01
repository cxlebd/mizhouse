using Mizhouse.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mizhouse.Modelo;
using Mizhouse.Comunes.Util;

namespace Mizhouse.Presentacion
{
	public partial class editar_cuenta_administrador : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Usuario user = (Usuario)Session["Usuario"];
			if (user == null || user.Roles != 2)
            {
				Response.Redirect(Constantes.INDEX);
            }
			ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
			correo.Text = user.Correo;
			pss.Text = Cifrado.Encripta(user.Pss_Usuario, 2);
			nombre.Text = user.Nombre;
			appat.Text = user.Appat;
			apmat.Text = user.Apmat;
			cel.Text = user.Celular;
			tel.Text = user.Telefono;
		}

		protected void guarda_Click(object sender, EventArgs e)
		{
			ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
			Usuario user = (Usuario)Session["Usuario"];
			string lsURL = string.Empty;
			string correo = user.Correo;
			string pss = Request["pss"];
			string nombre = Request["nombre"];
			string appat = Request["appat"];
			string apmat = Request["apmat"];
			string cel = Request["cel"];
			string tel = Request["tel"];
			Usuario u = cli.ConsultaPerfil(user.ID_Usuario);
			lsURL = cli.ActualizaUsuario(u.ID_Usuario, nombre, appat, apmat, correo, cel, tel, u.Departamento, pss, u.Roles) ? "index.aspx" : "editar_cuenta_administrador.aspx";
			Response.Redirect(lsURL);
		}

		protected void descarta_Click(object sender, EventArgs e)
		{
			Response.Redirect("editar_cuenta_administrador.aspx");
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

			lsURL = cli.DarDeBaja(u.ID_Usuario, nombre, appat, apmat, correo, cel, tel, u.Departamento, pss, u.Roles) ? "index.aspx" : "editar_cuenta_administrador.aspx";

			Response.Redirect(lsURL);
		}
	}
}