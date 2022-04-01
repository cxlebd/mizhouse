<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editar_cuenta.aspx.cs" Inherits="Mizhouse.Presentacion.editar_cuenta" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Editar cuenta</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo">
  <!-- Menú -->
  <nav>
    <ul>
      <li>
        <a href="index.aspx">
          <img src="./img/gato_sin_fondo.png"></a>
      </li>
      <li>
        <!-- Chat Administracion -->
        <a href="chat_administracion_residente.html">
          <img src="./img/administracion.png" alt=""></a>
      </li>
      <li>
        <!-- Chat comite -->
        <a href="">
          <img src="./img/comite.png" alt=""></a>
      </li>
      <li>
        <a href="balance_residente.html">
          <img src="./img/balance.png" alt=""></a>
      </li>

      <li>
        <a href="tramites_residente.html">
          <img src="./img/tramites.png" alt=""></a><!-- falta base incidencias -->
      </li>
      <li>
        <a href="base_incidencias_residente.html">
          <img src="./img/incidencias.png" alt=""></a><!-- falta base incidencias -->
      </li>
      <li>
        <a href="miembros_unidad.html">
          <img src="./img/cargadatos.png" alt=""></a>
      </li>
      <!-- Quité editar cuenta por ser la ventana actual -->

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
            <asp:TextBox ID="correo" runat="server"></asp:TextBox>
          </div>
          <div class="la">
            <label for="">CONTRASEÑA:</label>
            <asp:TextBox ID="pss" runat="server"></asp:TextBox>
          </div>
          <div class="departamento-rol">
            <div>
              <label for="">DEPARTAMENTO:</label><br>
              <asp:TextBox ID="depto" runat="server" CssClass="depa"></asp:TextBox>
            </div>
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
