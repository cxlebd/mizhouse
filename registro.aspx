<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="Mizhouse.Presentacion.registro" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Crear una cuenta</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo">
  <div class="registro">
    <div class="div-img">
      <img src="img/gato_sin_fondo.png" alt="mizhouse">
    </div>
    <div class="div-formulario">
      <h2>Crear una cuenta(inserte los datos del preregistro)</h2>
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
              <asp:TextBox ID="depto" runat="server"></asp:TextBox>
            </div>
            <div>
              <label for="">ROL:</label><br>
              <asp:TextBox ID="rol" runat="server" type="number"></asp:TextBox>
            </div>
          </div>
          <div class="la">
            <asp:Button ID="ingresar" runat="server" Text="Continuar" CssClass="btn btn-morado" OnClick="ingresar_Click"/>
            <a href="./index.aspx">¿Ya tienes una cuenta?</a>
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
