using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mizhouse.Modelo;

namespace Mizhouse.Presentacion
{
	public partial class balance_administrador : System.Web.UI.Page
	{

		List<IngresoLista> ingresos = new List<IngresoLista>();
		List<EgresoLista> egresos = new List<EgresoLista>();
		protected void Page_Load(object sender, EventArgs e)
		{
			Usuario user = (Usuario)Session["Usuario"];
			if (user == null || user.Roles != 2)
			{
				Response.Redirect(Constantes.INDEX);
			}
			ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();

			monto.Text = cli.ConsultaBalance(user.ID_Usuario).Monto.ToString();
			estado.Text = cli.ConsultaBalance(user.ID_Usuario).Estado;

			ingresos = cli.ConsultaBalance(user.ID_Usuario).Ingresos;
			egresos = cli.ConsultaBalance(user.ID_Usuario).Egresos;

			tablaingresos.DataSource = ingresos;
            tablaingresos.DataBind();

			tablaegresos.DataSource = egresos;
			tablaegresos.DataBind();
        }
    }
}