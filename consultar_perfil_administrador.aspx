<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultar_perfil_administrador.aspx.cs" Inherits="Mizhouse.Presentacion.consultar_perfil_administrador" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>consultar cuenta administrador</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo">
  <nav>
    <ul>
      <li>
        <a href="index.aspx">
          <img src="./img/gato_sin_fondo.png" alt="">
        </a>
      </li>
      <li>
        <a href="chat_residente_administrador.html">
          <img src="./img/residente.png" alt="">
        </a>
        <!--chat administracion-->
      </li>
      <li>
        <a href="chat_comite_administrador.html">
          <img src="./img/comite.png" alt="">
        </a>
        <!--chat residente-->
      </li>
      <li>
        <a href="balance_administrador.aspx">
          <img src="./img/balance.png" alt="" />
        </a>
      </li>
      <li>
        <a href="tramites_administrador.aspx">
          <img src="./img/tramites.png" alt="">
        </a>
      </li>
      <li>
        <a href="base_incidencias_administrador.aspx">
          <img src="./img/incidencias.png" alt="">
        </a>
      </li>
      <li>
        <a href="subir_edo_cuenta.aspx">
          <img src="./img/estado cuenta.png" alt="">
        </a>
      </li>
      <li>
        <a href="base_solicitudes_administardor.aspx">
          <img src="./img/solicitudes.png" alt="">
        </a>
      </li>
      <!--quite miembros adminitrador porque es la actual-->
      <li>
        <a href="editar_cuenta_administrador.aspx">
          <img src="./img/perfil.png" alt="">
        </a>
      </li>
    </ul>
  </nav>
  <form runat="server">
    <div class="registro">
      <div class="div-img">
        <img src="img/gato_sin_fondo.png" alt="mizhouse">
      </div>
      <div class="div-formulario">
       <form class="formulario">
          <section class="registro-sect">
            <div class="la">
              <label for="">CORREO ELECTRÓNICO:</label>
              <asp:TextBox ID="correo" runat="server" ReadOnly></asp:TextBox>
            </div>
            <!-- <div class="btn-group">
              <button class="btn btn-morado">Guardar cambios</button>
              <button class="btn btn-morado">Descartar cambios</button>
              <button class="btn btn-rojo">Darse de baja</button>
          </div> -->
          </section>
          <section class="registro-sect">
            <div class="la">
              <label for="">NOMBRE:</label>
              <asp:TextBox ID="nombre" runat="server" ReadOnly></asp:TextBox>
            </div>
            <div class="la">
              <label for="">APELLIDO PATERNO:</label>
              <asp:TextBox ID="appat" runat="server" ReadOnly></asp:TextBox>
            </div>
            <div class="la">
              <label for="">APELLIDO MATERNO:</label>
              <asp:TextBox ID="apmat" ReadOnly runat="server"></asp:TextBox>
            </div>
            <div class="la">
              <label for="">CELULAR:</label>
              <asp:TextBox ID="cel" ReadOnly runat="server"></asp:TextBox>
            </div>
            <div class="la">
              <label for="">TELÉFONO CASA:</label>
              <asp:TextBox ID="tel" runat="server" ReadOnly></asp:TextBox>
            </div>
          </section>
        </form>
      </div>
    </div>
  </form>
</body>
</html>
