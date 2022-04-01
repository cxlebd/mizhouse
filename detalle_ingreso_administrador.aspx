<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detalle_ingreso_administrador.aspx.cs" Inherits="Mizhouse.Presentacion.detalle_ingreso_administrador" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Detalle egreso comite</title>
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
        <a href="tramites_administrador.html">
          <img src="./img/tramites.png" alt=""></a>
      </li>
      <li>
        <a href="base_incidencias_administrador.html">
          <img src="./img/incidencias.png" alt=""></a>
      </li>
      <li>
        <a href="subir_edo_cuenta.html">
          <img src="./img/estado cuenta.png" alt=""></a>
      </li>
      <li>
        <a href="base_solicitudes_administardor.html">
          <img src="./img/solicitudes.png" alt=""></a>
      </li>
      <li>
        <a href="miembros_unidad_administrador.html">
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
      <div class="detalle-ingreso">
        <div class="detalle-titulo">
          <p>Ingreso No.<asp:Label ID="id_ingreso" runat="server" Text="Label"></asp:Label></p>
        </div>
        <div>
          <p>Monto:</p>
          <p>Persona que pagó:</p>
          <p>Departamento:</p>
        </div>
        <div>
          <asp:Label ID="monto" runat="server" Text="Label"></asp:Label>
          <br />
          <asp:Label ID="user" runat="server" Text="Label"></asp:Label>
          <br />
          <asp:Label ID="depto" runat="server" Text="Label"></asp:Label>
        </div>
      </div>
    </div>
  </form>
</body>
</html>
