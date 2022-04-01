using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mizhouse.Modelo;

namespace Mizhouse.Presentacion
{
    public partial class consultar_perfil_administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario user = (Usuario)Session["Usuario"];
            if (user == null || user.Roles != 2)
            {
                Response.Redirect(Constantes.INDEX);
            }
            ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
            int id_usu = int.Parse(Request.QueryString["id"]);
            Usuario u = cli.ConsultaPerfil(id_usu);
            correo.Text = u.Correo;
            nombre.Text = u.Nombre;
            appat.Text = u.Appat;
            apmat.Text = u.Apmat;
            cel.Text = u.Celular;
            tel.Text = u.Telefono;
        }
    }
}