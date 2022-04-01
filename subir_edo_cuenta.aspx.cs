using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mizhouse.Comunes.Storage;
using Mizhouse.Modelo;
using Mizhouse.Repositorio;

namespace Mizhouse.Presentacion
{
    public partial class subir_edo_cuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario user = (Usuario)Session["Usuario"];
            if (user == null || user.Roles != 2)
            {
                Response.Redirect(Constantes.INDEX);
            }
            ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
            doc.Text = BlobStorage.DownloadBLOB(cli.ConsultaEstado(user.ID_Usuario).Documento);
        }

        protected void nuevo_Click(object sender, EventArgs e)
        {
            if (FileUploadControlgasto.HasFile)
            {
                try
                {
                    Usuario user = (Usuario)Session["Usuario"];
                    int id_usu = user.ID_Usuario;
                    ResidenciaRepo residencia = new ResidenciaRepo();
                    Residencia_UsuarioRepo relacionru = new Residencia_UsuarioRepo();
                    int id_unidad = relacionru.ConsultaRelaciones().Where(x => x.ID_Usuario == id_usu).ToList()[0].ID_Residencia;
                    string nombre_res = residencia.ConsultaResidencias().Where(x => x.ID_Residencia == id_unidad).ToList()[0].Nombre;
                    string filename = Path.GetFileName(FileUploadControlgasto.FileName);
                    string filetype = filename.Split('.').Last();
                    string route = AdmnistraAcceso.ArmaCadena(id_unidad, nombre_res, filetype, "Edo_Cuenta", "", "");
                    string blobname = route.Split('/').Last();
                    ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();

                    using (MemoryStream loMS = new MemoryStream(FileUploadControlgasto.FileBytes))
                    {
                        bool a = BlobStorage.UploadFileToStorage(loMS, route);
                    }

                    if (cli.SubirEstadoCuenta(user.ID_Usuario, route))
                    {
                        doc.Text = BlobStorage.DownloadBLOB(route);
                    }
                    else
                    {
                        doc.Text = "Error al insertar";
                    }
                }
                catch (Exception)
                {
                    doc.Text = "error al subir archivo";
                    throw;
                }
            }
        }
    }
}