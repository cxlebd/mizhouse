<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editar_cuenta_administrador.aspx.cs" Inherits="Mizhouse.Presentacion.editar_cuenta_administrador" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Editar cuenta admin</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo">
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
        <a href="balance_administrador.html">
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
        <a href="miembros_unidad_administrador.aspx">
          <img src="./img/cargadatos.png" alt=""></a>
      </li>
      <!--quite editar perfil admin porque es la actual-->
    </ul>
  </nav>
  <div class="registro">
    <div class="div-img">
      <img src="img/gato_sin_fondo.png" alt="mizhouse">
    </div>
    <div class="div-formulario">
      <h2>Editar cuenta</h2>
      <form class="formulario" runat="server">
        <section class="registro-sect">
          <div class="la">
            <label for="">CORREO ELECTRÓNICO:</label>
            <asp:TextBox ID="correo" runat="server" Enabled="false"></asp:TextBox>
          </div>
          <div class="la">
            <label for="">CONTRASEÑA:</label>
            <asp:TextBox ID="pss" runat="server"></asp:TextBox>
          </div>
          <div class="departamento-rol">
          </div>
          <div class="btn-group">
            <asp:Button ID="guarda" runat="server" Text="Guardar Cambios" CssClass="btn btn-morado" OnClick="guarda_Click"/>
            <asp:Button ID="descarta" runat="server" Text="Descartar Cambios" CssClass="btn btn-morado" OnClick="descarta_Click"/>
            <asp:Button ID="baja" runat="server" Text="Dar de baja" CssClass="btn btn-morado" OnClick="baja_Click"/>
          </div>
        </section>
        <section class="registro-sect">
          <div class="la">
            <label for="">NOMBRE:</label>
            <asp:TextBox ID="nombre" runat="server"></asp:TextBox>
          </div>
          <div class="la">
            <label for="">APELLIDO PATERNO:</label>
            <asp:TextBox ID="appat" runat="server"></asp:TextBox>
          </div>
          <div class="la">
            <label for="">APELLIDO MATERNO:</label>
            <asp:TextBox ID="apmat" runat="server"></asp:TextBox>
          </div>
          <div class="la">
            <label for="">CELULAR:</label>
            <asp:TextBox ID="cel" runat="server" type="number"></asp:TextBox>
          </div>
          <div class="la">
            <label for="">TELÉFONO CASA:</label>
            <asp:TextBox ID="tel" runat="server"></asp:TextBox>
          </div>
        </section>
      </form>
    </div>
  </div>
</body>
</html>
