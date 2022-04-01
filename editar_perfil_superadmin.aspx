<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editar_perfil_superadmin.aspx.cs" Inherits="Mizhouse.Presentacion.editar_perfil_superadmin" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Editar cuenta de superadmin</title>
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
        <a href="cargar_personas.aspx">
          <img src="./img/cargadatos.png" alt=""></a>
      </li>
      <!--quite editar perfil superadmin por ser la actual-->
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
          <div class="btn-group">
            <asp:Button ID="guarda" runat="server" Text="Guardar Cambios" CssClass="btn btn-morado" OnClick="guarda_Click" />
            <asp:Button ID="descarta" runat="server" Text="Descartar Cambios" CssClass="btn btn-morado" OnClick="descarta_Click" />
            <asp:Button ID="baja" runat="server" Text="Dar de baja" CssClass="btn btn-morado" OnClick="baja_Click" />
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
