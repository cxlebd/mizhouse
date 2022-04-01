<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="subir_edo_cuenta.aspx.cs" Inherits="Mizhouse.Presentacion.subir_edo_cuenta" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Subir Estado de cuenta</title>
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
      <!--quite edo cuenta por ser el actual-->
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
        <div class="div-consultar">
          <h1>Estado de cuenta</h1>
          <asp:FileUpload ID="FileUploadControlgasto" runat="server" />
          <asp:Button CssClass="btn btn-morado" runat="server" Text="Subir documento" ID="nuevo" OnClick="nuevo_Click" />
        </div>
        <div class="img-consultar">
          <asp:Label ID="doc" runat="server" Text="Label"></asp:Label>
        </div>
      </div>
    </div>
  </form>
</body>
</html>
