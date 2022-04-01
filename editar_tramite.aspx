<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editar_tramite.aspx.cs" Inherits="Mizhouse.Presentacion.editar_tramite" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Balance residente</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo-claro">
  <!-- Menú -->
  <nav>
    <ul>
      <li>
        <a href="index.aspx">
          <img src="./img/gato_sin_fondo.png" alt=""></a>
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

  <!-- Cuerpo -->
  <form runat="server">
    <div class="container">
      <div class="container-tramites">
        <div class="div-editar">
          <h1>Trámite No.<asp:Label ID="idtram" runat="server" Text="Label"></asp:Label></h1>
          <div class="btn-group">
            <asp:Button CssClass="btn btn-morado" runat="server" Text="Guardar cambios" ID="guarda" OnClick="guarda_Click" />
            <asp:Button CssClass="btn btn-morado" runat="server" Text="Descartar cambios" ID="descarta" OnClick="descarta_Click" />
          </div>
        </div>
        <div class="editar-tramite">
          <div>
            <label for="">Folio:</label><br>
            <asp:TextBox ID="folio" runat="server"></asp:TextBox>
          </div>
          <div>
            <label for="">Descripción: (ingrese una descripción corta)</label><br>
            <asp:TextBox ID="desc" runat="server"></asp:TextBox>
          </div>
          <div class="img-consultar">
            <div class="text-documento">
              <p>Documento:</p>
              <asp:FileUpload ID="FileUploadControl" runat="server" />
              <asp:Button runat="server" ID="UploadButton" Text="Subir archivo" OnClick="UploadButton_Click" CssClass="btn btn-morado"/>
              <br />
              <br />
            </div>
            <asp:Label ID="doc" runat="server" Text=""></asp:Label>
          </div>
        </div>
      </div>
  </form>
</body>
</html>
