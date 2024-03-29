﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tramites Residente</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo-claro">
    <!-- Menú -->
    <nav>
        <ul>
            <li>
                <a href="index.aspx src="./img/gato_sin_fondo.png"></a>
            </li>
            <li>
                <!-- Chat Administracion -->
                <a href="chat_administracion_residente.html"><img src="./img/administracion.png" alt=""></a>
            </li>
            <li>
                <!-- Chat comite -->
                <a href="chat_comite_residente.html"><img src="./img/comite.png" alt=""></a>
            </li>
            <li>
                <a href="balance_residente.html"><img src="./img/balance.png" alt=""></a>
            </li>
            <!-- Quité tramites por ser la ventana actual -->
            <li>
                <a href="base_incidencias_residente.html"><img src="./img/incidencias.png" alt=""></a><!-- falta base incidencias -->
            </li>
            <li>
                <a href="miembros_unidad.html"><img src="./img/cargadatos.png" alt=""></a>
            </li>
            <li>
                <a href="editar_cuenta.aspx"><img src="./img/perfil.png" alt=""></a>
            </li>
        </ul>
    </nav>

    <!-- Cuerpo -->
    <div class="container">
        <div class="container-tramites">
            <h1>Trámites</h1>
            <p>Haga click en el trámite para ver el documento del trámite</p>
            <table>
                <thead>
                    <th>No. Trámite</th>
                    <th>Descripción</th>
                    <th>Folio</th>
                </thead>
                <tbody>
                    <tr>
                       
                            <!-- detalle tramite en el tr -->
                        <td><a href="consultar_tramite_residente.html">asd</a></td>
                         <td>XXXXXXXXXX</td>
                         <td>XXXXXXXXXX</td>
                    </tr>
                    
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>