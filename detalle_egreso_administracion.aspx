<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detalle_egreso_administracion.aspx.cs" Inherits="Mizhouse.Presentacion.detalle_egreso_administracion" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Detalle egreso admin</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo-claro">
  <!-- Menú -->
  <nav>
    <ul>
      <li>
        <a href="index.aspx">
          <img src="./img/gato_sin_fondo.png" alt="">
        </a>
      </li>
      <li>
        <a href="chat_residente_administrador.html">
          <img src="./img/residente.png" alt=""></a><!--chat administracion-->
      </li>
      <li>
        <a href="chat_comite_administrador.html">
          <img src="./img/comite.png" alt=""></a><!--chat residente-->
      </li>
      <li>
        <a href="balance_administrador.aspx">
          <img src="./img/balance.png" alt="" /></a>
      </li>
      <li>
        <a href="tramites_administrador.aspx">
          <img src="./img/tramites.png" alt=""></a>
      </li>
      <li>
        <a href="base_incidencias_administrador.aspx">
          <img src="./img/incidencias.png" alt=""></a>
      </li>
      <li>
        <a href="subir_edo_cuenta.aspx">
          <img src="./img/estado cuenta.png" alt=""></a>
      </li>
      <li>
        <a href="base_solicitudes_administardor.aspx">
          <img src="./img/solicitudes.png" alt=""></a>
      </li>
      <li>
        <a href="miembros_unidad_administrador.aspx">
          <img src="./img/cargadatos.png" alt=""></a>
      </li>
      <li>
        <a href="editar_cuenta_administrador.aspx">
          <img src="./img/perfil.png" alt=""></a>
      </li>
    </ul>
  </nav>
  <form runat="server">
    <div class="container">
      <div class="container-der">
        <div class="egreso-comite">
          <p>Egreso No.<asp:Label ID="id_egreso" runat="server" Text="Label"></asp:Label></p>
          <p>Monto:</p>
          <p>$<asp:Label ID="monto" runat="server" Text="Label"></asp:Label></p>
        </div>
        <div class="comprobantes">
          <div class="comprobante">
            <p>Comprobante de gasto y de transacción</p>
            <div class="bloques">
              <div class="bloque">
                <div class="img-bloque">
                  <p><asp:Label ID="doctrans" runat="server" Text="Label"></asp:Label></p>
                </div>
                <p>Transacción</p>
              </div>
              <div class="bloque">
                <p><asp:Label ID="docgas" runat="server" Text="Label"></asp:Label></p>
                <br />
                <p>Gasto</p>
                <asp:FileUpload ID="FileUploadControlgasto" runat="server" />
                <asp:Button runat="server" ID="UploadButton" Text="Subir archivo" OnClick="subirtrans_Click" CssClass="btn btn-morado" />
                <br />
                <br />
              </div>
            </div>
          </div>
          <div class="comprobante">
            <p>Evidencias de ejecución</p>
            <div class="bloques">
              <div class="bloque">
                <p><asp:Label ID="docant" runat="server" Text="Label"></asp:Label></p>
                <br />
                <p>Antes</p>
                <asp:FileUpload ID="FileUploadControlantes" runat="server" />
                <asp:Button runat="server" ID="Button1" Text="Subir archivo" OnClick="subirant_Click" CssClass="btn btn-morado" />
                <br />
                <br />
              </div>
              <div class="bloque">
                <p><asp:Label ID="docdesp" runat="server" Text="Label"></asp:Label></p>
                <br />
                <p>Después</p>
                <asp:FileUpload ID="FileUploadControldespues" runat="server" />
                <asp:Button runat="server" ID="Button2" Text="Subir archivo" OnClick="subirdesp_Click" CssClass="btn btn-morado" />
                <br />
                <br />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </form>
</body>
</html>
