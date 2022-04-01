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
    public partial class detalle_egreso_administracion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario user = (Usuario)Session["Usuario"];
            if (user == null || user.Roles != 2)
            {
                Response.Redirect(Constantes.INDEX);
            }
            EgresoRepo egreso = new EgresoRepo();
            ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
            int id_egr = int.Parse(Request.QueryString["id"]);
            Egreso egr = egreso.ConsultaEgreso(id_egr);
            monto.Text = egr.Monto.ToString();
            id_egreso.Text = id_egr.ToString();
            doctrans.Text = string.IsNullOrEmpty(egr.Comprobante_Transaccion) ? "" : BlobStorage.DownloadBLOB(egr.Comprobante_Transaccion);
            docgas.Text = string.IsNullOrEmpty(egr.Comprobante_Gasto) ? "" : BlobStorage.DownloadBLOB(egr.Comprobante_Gasto);
            docant.Text = string.IsNullOrEmpty(egr.Antes) ? "" : BlobStorage.DownloadBLOB(egr.Antes);
            docdesp.Text = string.IsNullOrEmpty(egr.Despues) ? "" : BlobStorage.DownloadBLOB(egr.Despues);
        }

        protected void subirant_Click(object sender, EventArgs e)
        {
            if (FileUploadControlantes.HasFile)
            {
                try
                {
                    ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
                    Usuario u = (Usuario)Session["Usuario"];
                    int id_egr = int.Parse(Request.QueryString["id"]);
                    int id_usu = u.ID_Usuario;
                    ResidenciaRepo residencia = new ResidenciaRepo();
                    Residencia_UsuarioRepo relacionru = new Residencia_UsuarioRepo();
                    int id_unidad = relacionru.ConsultaRelaciones().Where(x => x.ID_Usuario == id_usu).ToList()[0].ID_Residencia;
                    string nombre_res = residencia.ConsultaResidencias().Where(x => x.ID_Residencia == id_unidad).ToList()[0].Nombre;
                    string filename = Path.GetFileName(FileUploadControlantes.FileName);
                    string filetype = filename.Split('.').Last();
                    string route = AdmnistraAcceso.ArmaCadena(id_unidad, nombre_res, filetype, "Comprobantes", "Ejecucion", "Antes");
                    string blobname = route.Split('/').Last();

                    using (MemoryStream loMS = new MemoryStream(FileUploadControlantes.FileBytes))
                    {
                        bool a = BlobStorage.UploadFileToStorage(loMS, route);
                    }

                    if (cli.CargaDespues(id_usu, filetype, id_egr, route))
                    {
                        docant.Text = BlobStorage.DownloadBLOB(route);
                    }
                    else
                    {
                        docant.Text = "Error al actualizar, consulte al superadmin";
                    }
                }
                catch (Exception)
                {
                    docant.Text = "Error al subir el archivo, verifique la ruta";
                    throw;
                }
            }
        }

        protected void subirdesp_Click(object sender, EventArgs e)
        {
            if (FileUploadControldespues.HasFile)
            {
                try
                {
                    ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
                    Usuario u = (Usuario)Session["Usuario"];
                    string filename = Path.GetFileName(FileUploadControldespues.FileName);
                    string filetype = filename.Split('.').Last();
                    int id_mov = int.Parse(Request.QueryString["id"]);
                    int id_usu = u.ID_Usuario;
                    ResidenciaRepo residencia = new ResidenciaRepo();
                    Residencia_UsuarioRepo relacionru = new Residencia_UsuarioRepo();
                    int id_unidad = relacionru.ConsultaRelaciones().Where(x => x.ID_Usuario == id_usu).ToList()[0].ID_Residencia;
                    string nombre_res = residencia.ConsultaResidencias().Where(x => x.ID_Residencia == id_unidad).ToList()[0].Nombre;
                    string ruta = AdmnistraAcceso.ArmaCadena(id_unidad, nombre_res, filetype, "Comprobantes", "Ejecucion", "Despues");
                    string blobname = ruta.Split('/').Last();

                    using (MemoryStream loMS = new MemoryStream(FileUploadControlantes.FileBytes))
                    {
                        bool a = BlobStorage.UploadFileToStorage(loMS, ruta);
                    }

                    if (cli.CargaAntes(id_usu, filetype, id_mov, ruta))
                    {
                        docdesp.Text = BlobStorage.DownloadBLOB(ruta);
                    }
                    else
                    {
                        docant.Text = "Error al actualizar, consulte al superadmin";
                    }
                }
                catch (Exception)
                {
                    docant.Text = "Error al subir el archivo, verifique la ruta";
                    throw;
                }
            }
        }

        protected void subirtrans_Click(object sender, EventArgs e)
        {
            if (FileUploadControlgasto.HasFile)
            {
                try
                {
                    ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
                    Usuario u = (Usuario)Session["Usuario"];
                    string filename = Path.GetFileName(FileUploadControlgasto.FileName);
                    string filetype = filename.Split('.').Last();
                    int id_mov = int.Parse(Request.QueryString["id"]);
                    int id_usu = u.ID_Usuario;
                    ResidenciaRepo residencia = new ResidenciaRepo();
                    Residencia_UsuarioRepo relacionru = new Residencia_UsuarioRepo();
                    int id_unidad = relacionru.ConsultaRelaciones().Where(x => x.ID_Usuario == id_usu).ToList()[0].ID_Residencia;
                    string nombre_res = residencia.ConsultaResidencias().Where(x => x.ID_Residencia == id_unidad).ToList()[0].Nombre;
                    string ruta = AdmnistraAcceso.ArmaCadena(id_unidad, nombre_res, filetype, "Comprobantes", "Transaccion", "");

                    using (MemoryStream loMS = new MemoryStream(FileUploadControlantes.FileBytes))
                    {
                        bool a = BlobStorage.UploadFileToStorage(loMS, ruta);
                    }

                    if (cli.CargaCompGast(id_usu, filetype, id_mov, ruta))
                    {
                        doctrans.Text = BlobStorage.DownloadBLOB(ruta);
                    }
                    else
                    {
                        doctrans.Text = "Error al actualizar, consulte al superadmin";
                    }
                }
                catch (Exception)
                {
                    docgas.Text = "Error al guardar, verifique la ruta";
                    throw;
                }
            }
        }
    }
}