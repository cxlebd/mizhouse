using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mizhouse.Modelo;
using Mizhouse.Repositorio;
using System.IO;
using Mizhouse.Comunes.Storage;

namespace Mizhouse.Presentacion
{
    public partial class editar_solicitud_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario user = (Usuario)Session["Usuario"];
            if (user == null || user.Roles != 2)
            {
                Response.Redirect(Constantes.INDEX);
            }
            ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
            int id_soli = int.Parse(Request.QueryString["id"]);
            if (id_soli != 0)
            {
                Solicitud_Egreso s = cli.ConsultaSolicitudes(user.ID_Usuario).Where(x => x.ID_Solicitud == id_soli).FirstOrDefault();
                Estados.SelectedIndex = s.ID_Estado;
                Estados.Disabled = true;
                desc.Text = s.Descripcion;
                doc.Text = BlobStorage.DownloadBLOB(s.Documento);
                FileUploadControlgasto.Visible = false;
                UploadButton.Enabled = false;
                guardar.Visible = false;
                desc.Enabled = false;
                descartar.Visible = false;
            }
            else
            {
                Estados.SelectedIndex = 3;
                Estados.Disabled = true;
                guardar.Visible = false;
            }
        }

        protected void subirtrans_Click(object sender, EventArgs e)
        {
            if (FileUploadControlgasto.HasFile)
            {
                try
                {
                    string desc = Request["desc"];
                    ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
                    Usuario u = (Usuario)Session["Usuario"];
                    int id_egr = int.Parse(Request.QueryString["id"]);
                    int id_usu = u.ID_Usuario;
                    ResidenciaRepo residencia = new ResidenciaRepo();
                    Residencia_UsuarioRepo relacionru = new Residencia_UsuarioRepo();
                    int id_unidad = relacionru.ConsultaRelaciones().Where(x => x.ID_Usuario == id_usu).ToList()[0].ID_Residencia;
                    string nombre_res = residencia.ConsultaResidencias().Where(x => x.ID_Residencia == id_unidad).ToList()[0].Nombre;
                    string filename = Path.GetFileName(FileUploadControlgasto.FileName);
                    string filetype = filename.Split('.').Last();
                    string route = AdmnistraAcceso.ArmaCadena(id_unidad, nombre_res, filetype, "Comprobantes", "Egresos(Solicitud)", "");
                    string blobname = route.Split('/').Last();

                    using (MemoryStream loMS = new MemoryStream(FileUploadControlgasto.FileBytes))
                    {
                        bool a = BlobStorage.UploadFileToStorage(loMS, route);
                    }
                    if (cli.NuevaSolicitud(id_usu, filetype, desc, route))
                    {
                        doc.Text = BlobStorage.DownloadBLOB(route);
                    }
                    else
                    {
                        doc.Text = "Error al insertar, consulte al superadmin";
                    }
                }
                catch (Exception)
                {
                    doc.Text = "Error al guardar, verifique la ruta";
                    throw;
                }
            }
        }

        protected void guardar_Click(object sender, EventArgs e)
        {
        }

        protected void descartar_Click(object sender, EventArgs e)
        {
            Response.Redirect("base_solicitudes_administardor.aspx");
        }
    }
}