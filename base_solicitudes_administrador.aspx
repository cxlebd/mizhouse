﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solicitudes  Administrador</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo-claro">
    <!-- Menú -->
    <nav>
    <ul>
        <li>
            <a href="index.aspx"><img src="./img/gato_sin_fondo.png" alt=""></a>
        </li>
        <li>
            <a href="chat_residente_administrador.html"><img src="./img/residente.png" alt=""></a><!--chat administracion-->
        </li>
        <li>
            <a href="chat_comite_administrador.html"><img src="./img/comite.png" alt=""></a><!--chat residente-->
        </li>
        <li>
            <a href="balance_administrador.aspx"><img src="./img/balance.png" alt="" /></a>
        </li>
        <li>
            <a href="tramites_administrador.aspx"><img src="./img/tramites.png" alt=""></a>
        </li>
        <li>
            <a href="base_incidencias_administrador.aspx"><img src="./img/incidencias.png" alt=""></a>
        </li>
        <li>
            <a href="subir_edo_cuenta.aspx"><img src="./img/estado cuenta.png" alt=""></a>
        </li>
       <!--quite base solicitudes admin porque es la actual-->
        <li>
            <a href="miembros_unidad_administrador.aspx"><img src="./img/cargadatos.png" alt=""></a>
        </li>
        <li>
            <a href="editar_cuenta_administrador.aspx"><img src="./img/perfil.png" alt=""></a>
        </li>
    </ul>
</nav> 

    <!-- Cuerpo -->
    <div class="container">
        <div class="container-tramites">
            <div class="btn-group">
                <h1>Solicitudes</h1>
                <a href="crear_solicitud.html"><button class="btn btn-morado">Generar solicitud</button></a>
            </div>
            <br>
            <p>Haga click en la solicitud para ver los detalles</p>
            <br>
            <table>
                <thead>
                <th>Solicitud</th>
                <th>Descripcion</th>
                <th>Estado</th>
                </thead>
                <tbody>
                    <tr>

                        <!-- detalle solicitud en el tr -->
                        <td>No. Solicitud</td>
                        <td>XXXXXXXXXX</td>
                        <td>Aceptado/Declinado/Pendiente</td>
                    </tr>
                    <tr>

                        <!-- detalle solicitud en el tr -->
                        <td><a href="editar_solicitud_admin.html" class="a_balance">asd</a></td>
                        <td></td>
                        <td></td>
                    </tr>

                </tbody>
            </table>
        </div>
    </div>
</body>
</html>