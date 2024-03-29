﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="balance_comite.aspx.cs" Inherits="Mizhouse.Presentacion.balance_comite" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Balance comite</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo-claro">
  <!-- Men� -->
  <nav>
    <ul>
      <li>
        <a href="index.aspx">
          <img src="./img/logo_sin_fondo.png"></a>
      </li>
      <li>
        <a href="chat_administracion_comite.html">
          <img src="./img/administracion.png" alt=""></a><!--chat administracion-->
      </li>
      <li>
        <a href="chat_residente_comite.html">
          <img src="./img/residente.png" alt=""></a><!--chat residente-->
      </li>
      <!--quite balance ya que es la actual-->
      <li>
        <a href="tramites_comite.html">
          <img src="./img/tramites.png" alt=""></a>
      </li>
      <li>
        <a href="base_incidencias_comite.html">
          <img src="./img/incidencias.png" alt=""></a>
      </li>
      <li>
        <a href="consultar_edo_cuenta.html">
          <img src="./img/estado cuenta.png" alt=""></a>
      </li>
      <li>
        <a href="base_solicitudes_comite.html">
          <img src="./img/solicitudes.png" alt=""></a>
      </li>
      <li>
        <a href="miembros_unidad_comite.html">
          <img src="./img/cargadatos.png" alt=""></a>
      </li>
      <li>
        <a href="editar_cuenta_comite.aspx">
          <img src="./img/perfil.png" alt=""></a>
      </li>
    </ul>
  </nav>

  <!-- Cuerpo -->
  <div class="balance">
    <div class="div-balance">
      <h1>El balance actual es de:</h1>
      <h2>$0.00</h2>
      <h3>* este balance es: (preliminar o definitivo)</h3>
    </div>
    <div class="div-aportacion">
      <h1>Tu aportaci�n es de:</h1>
      <h2>$0.00</h2>
    </div>
    <div class="div-movimientos">
      <h1>Movimientos</h1>
      <h2>Haga click en alg�n movimiento para ver detalles</h2>
      <div class="tablas">
        <table>
          <th colspan="2">Ingresos</th>
          <!--Aca va el detalle de ingresos-->
          <tbody>
            <tr>
              <td><a href="detalle_ingreso_comite.html">1</a></td>
              <td>$00.0</td>
            </tr>
            <tr>
              <td>2</td>
              <td>$00.0</td>
            </tr>
            <tr>
              <td>3</td>
              <td>$00.0</td>
            </tr>
            <tr>
              <td>4</td>
              <td>$00.0</td>
            </tr>
            <tr>
              <td>5</td>
              <td>$00.0</td>
            </tr>
            <tr>
              <td>6</td>
              <td>$00.0</td>
            </tr>
          </tbody>
        </table>
        <table>
          <th colspan="2">Egresos</th>
          <tbody>
            <tr>
              <td><a href="detalle_egreso_comite.html">1</a></td>
              <td>$00.0</td>
            </tr>
            <tr>
              <td>2</td>
              <td>$00.0</td>
            </tr>
            <tr>
              <td>3</td>
              <td>$00.0</td>
            </tr>
            <tr>
              <td>4</td>
              <td>$00.0</td>
            </tr>
            <tr>
              <td>5</td>
              <td>$00.0</td>
            </tr>
            <tr>
              <td>6</td>
              <td>$00.0</td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</body>
</html>
