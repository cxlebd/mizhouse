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
    public partial class detalle_ingreso_administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IngresoRepo ingreso = new IngresoRepo();
            UsuarioRepo usu = new UsuarioRepo();
            Usuario us = (Usuario)Session["Usuario"];
            if (us == null || us.Roles != 2)
            {
                Response.Redirect(Constantes.INDEX);
            }
            int id_ing = int.Parse(Request.QueryString["id"]);
            Ingreso i = ingreso.ConsultaIngreso(id_ing);
            Usuario u = usu.ConsultaUsuario(i.ID_Usuario);
            
            id_ingreso.Text = i.ID_Ingreso.ToString();
            monto.Text = "$" + i.Monto;
            user.Text = u.Appat+" "+u.Appat+" "+u.Nombre;
            depto.Text = u.Departamento;
        }
    }
}