<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cargar_personas.aspx.cs" Inherits="Mizhouse.Presentacion.cargar_personas" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cargar personas</title>
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
      <!--quite cargar personas porque es el actual-->
      <li>
        <a href="editar_perfil_superadmin.aspx">
          <img src="./img/perfil.png" alt=""></a>
      </li>
    </ul>
  </nav>

  <!-- Cuerpo -->
  <div class="container">
    <div class="container-tramites">
      <div class="div-consultar">
        <h1>Cargar unidad</h1>

      </div>
      <form runat="server" class="editar-tramite">
        <p>Documento:</p>
        <asp:TextBox ID="csv" runat="server"></asp:TextBox>
        <div>
          <label for="">Nombre de la unidad:</label><br>
          <asp:TextBox ID="nombre" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="crear" runat="server" Text="Registrar unidad" CssClass="btn btn-morado" OnClick="crear_Click"/>
        <%--        <div>
          <label for="">Dirección:</label><br>
          <input type="text">
        </div>--%>
      </form>
    </div>
  </div>
</body>
</html>
