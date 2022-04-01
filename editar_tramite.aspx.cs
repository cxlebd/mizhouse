using Mizhouse.Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Mizhouse.Comunes;
using Mizhouse.Repositorio;
using Mizhouse.Comunes.Storage;
using System.IO;

namespace Mizhouse.Presentacion
{
    public partial class editar_tramite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario u = (Usuario)Session["Usuario"];
            int id_mov = int.Parse(Request.QueryString["id"]);
            ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
            if (id_mov != 0)
            {
                Tramite t = cli.ConsultaTramite(id_mov);
                idtram.Text = t.ID_Tramite.ToString();
                folio.Text = t.Folio.ToString();
                desc.Text = t.Descripcion.ToString();
                doc.Text = BlobStorage.DownloadBLOB(t.Doc_Comprobante);
                FileUploadControl.Enabled = false;
                UploadButton.Visible = false;
            }
            else
            {
                guarda.Visible = false;
                descarta.Visible = false;
            }

        }

        protected void guarda_Click(object sender, EventArgs e)
        {
            ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
            string fol = Request["folio"];
            string descri = Request["desc"];
            TramiteRepo tram = new TramiteRepo();
            Tramite t = cli.ConsultaTramite(int.Parse(Request.QueryString["id"]));
            t.Folio = fol;
            t.Descripcion = descri;
            if (tram.ActualizaTramite(t) >= 1)
            {
                folio.Text = t.Folio;
                desc.Text = t.Descripcion;
            }
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {
                    ServiceReference1.Service1Client cli = new ServiceReference1.Service1Client();
                    Usuario u = (Usuario)Session["Usuario"];
                    string desc = Request["desc"];
                    string folio = Request["folio"];
                    int id_usu = u.ID_Usuario;
                    ResidenciaRepo residencia = new ResidenciaRepo();
                    Residencia_UsuarioRepo relacionru = new Residencia_UsuarioRepo();
                    int id_unidad = relacionru.ConsultaRelaciones().Where(x => x.ID_Usuario == id_usu).ToList()[0].ID_Residencia;
                    string nombre_res = residencia.ConsultaResidencias().Where(x => x.ID_Residencia == id_unidad).ToList()[0].Nombre;
                    string filename = Path.GetFileName(FileUploadControl.FileName);
                    string filetype = filename.Split('.').Last();
                    string route = AdmnistraAcceso.ArmaCadena(id_unidad, nombre_res, filetype, "Doc_tramites", "", "");
                    string blobname = route.Split('/').Last();

                    using (MemoryStream loMS = new MemoryStream(FileUploadControl.FileBytes))
                    {
                        bool a = BlobStorage.UploadFileToStorage(loMS, route);
                    }
                    if (cli.CargaTramite(id_usu, desc, folio, filetype, route))
                    {
                        descarta.Visible = true;
                        descarta.Text = "Listo";
                        doc.Text = BlobStorage.DownloadBLOB(filename);
                    }
                    else
                    {
                        doc.Text = "error al crear transaccion, consulte al superadmin";
                    }
                }
                catch (Exception ex)
                {
                    doc.Text = "error al subir " + ex.Message;
                }
            }
        }

        protected void descarta_Click(object sender, EventArgs e)
        {
            Response.Redirect("tramites_administrador.aspx");
        }
    }
}