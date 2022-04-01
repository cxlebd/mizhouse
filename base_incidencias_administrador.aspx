<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="base_incidencias_administrador.aspx.cs" Inherits="Mizhouse.Presentacion.base_incidencias_administrador" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Incidencias  Administracion</title>
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
      <!--quite incidencias por ser la actual-->
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
        <h1>Incidencias</h1>
        <p>Haga click en la incidencia para ver el hilo de la incidecia</p>
        <table>
          <tbody>
            <tr>
              <td>
                <asp:GridView ID="incidenciatabla" runat="server" AutoGenerateColumns="false" BorderWidth="0" GridLines="None">
                  <Columns>
                    <asp:HyperLinkField DataTextField="ID_Incidencia" DataNavigateUrlFields="Destino" HeaderText="ID_Incidecia" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                    <asp:BoundField DataField="ID_Estado" HeaderText="Estado" />
                  </Columns>
                </asp:GridView>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </form>
</body>
</html>
