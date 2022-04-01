<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tramites_administrador.aspx.cs" Inherits="Mizhouse.Presentacion.tramites_administrador" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>tramites admin</title>
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
    <div class="container">
      <div class="container-tramites">
        <div class="div-tramites">
          <h1>Trámites</h1>
          <asp:Button ID="levantar" runat="server" Text="Levantar Trámite" OnClick="levantar_Click" CssClass="btn btn-morado"/>
          <p>Haga click en el trámite para ver el documento del trámite</p>
        </div>
        <table>
          <tbody>
            <tr>
             <td>
               <asp:GridView ID="tramitestabla" runat="server" BorderWidth="0" GridLines="None" AutoGenerateColumns="false">
                  <Columns>
                    <asp:HyperLinkField DataTextField="ID_Tramite" DataNavigateUrlFields="Destino" HeaderText="ID_Tramite" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                    <asp:BoundField DataField="Folio" HeaderText="Folio" />
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
