<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="balance_administrador.aspx.cs" Inherits="Mizhouse.Presentacion.balance_administrador" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Balance administracion</title>
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
      <!--quite balance administrador por ser la actual-->
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
    <div class="balance">
      <div class="div-balance">
        <h1>El balance actual es de:</h1>
        <h2>
          <asp:Label ID="monto" runat="server" Text="Label"></asp:Label></h2>
        <h3>* este balance es:
          <asp:LinkButton ID="estado" runat="server">LinkButton</asp:LinkButton></h3>
      </div>
      <div class="div-movimientos">
        <h1>Movimientos</h1>
        <h2>Haga click en algÚn movimiento para ver detalles</h2>
        <div class="tablas">
          <table>
            <th>Ingresos</th>
            <tbody>
              <tr>
                <td>
                  <asp:GridView ID="tablaingresos" runat="server" BorderWidth="0" GridLines="None" AutoGenerateColumns="false">
                    <Columns>
                      <asp:HyperLinkField DataTextField="ID_Ingreso" DataNavigateUrlFields="Destino" HeaderText="ID_Ingreso"/>
                      <asp:BoundField DataField="Monto" HeaderText="Monto" />
                    </Columns>
                  </asp:GridView>
                </td>
              </tr>
            </tbody>
          </table>
          <table>
            <th>Egresos</th>
            <tbody>
              <tr>
                <td>
                  <asp:GridView ID="tablaegresos" runat="server" BorderWidth="0" GridLines="None" AutoGenerateColumns="false">
                    <Columns>
                      <asp:HyperLinkField DataTextField="ID_Egreso" DataNavigateUrlFields="Destino" HeaderText="ID_Egreso"/>
                      <asp:BoundField DataField="Monto" HeaderText="Monto" />
                    </Columns>
                  </asp:GridView>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </form>
</body>
</html>
