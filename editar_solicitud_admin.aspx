<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editar_solicitud_admin.aspx.cs" Inherits="Mizhouse.Presentacion.editar_solicitud_admin" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Editar Solicitud admin</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo-claro">
  <!-- Men� -->
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
          <h1>Solicitud No.<asp:Label ID="ID_Solicitud" runat="server" Text="Label"></asp:Label></h1>
          <div class="btn-group">
            <asp:Button CssClass="btn btn-morado" ID="guardar" runat="server" Text="Guardar cambios" OnClick="guardar_Click" />
            <asp:Button CssClass="btn btn-morado" ID="descartar" runat="server" Text="Descartar cambios" OnClick="descartar_Click" />
          </div>
        </div>
        <div class="editar-tramite">
          <div>
            <label for="">Estado:</label><br>
            <select id="Estados" runat="server">
              <option selected value=" ">Elige una opción </option>
              <option value="3">Aceptada</option>
              <option value="2">Declinada</option>
              <option value="1">Pendiente</option>
            </select>
          </div>
          <div>
            <label for="">Descripción: (ingrese una descripción corta)</label><br>
            <asp:TextBox ID="desc" runat="server"></asp:TextBox>
          </div>
        </div>
        <div class="img-consultar">
          <div class="text-documento">
            <p>Documento:</p>
            <asp:FileUpload ID="FileUploadControlgasto" runat="server" />
            <asp:Button runat="server" ID="UploadButton" Text="Subir archivo" OnClick="subirtrans_Click" CssClass="btn btn-morado" />
            <br />
            <br />
            <asp:Label ID="doc" runat="server" Text=""></asp:Label>
          </div>
        </div>
      </div>
    </div>
  </form>
</body>
</html>
