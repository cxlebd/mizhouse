﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Incidencias  Residente</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo-claro">
    <!-- Menú -->
    <nav>
        <ul>
            <li>
            <a href="index.aspx"><img src="./img/logo_sin_fondo.png"></a>
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
            <li>
                <a href="tramites_residente.html"><img src="./img/tramites.png" alt=""></a>
            </li>
            <!-- Quité incidencias por ser la ventana actual -->

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
        <div class="container-tramites enlace_blanco">
            <h1>Incidencias</h1>
            <p>Haga click en el la incidencia para ver el hilo de la incidecia</p>
            <table>
                <thead>
                <th>Incidencia</th>
                <th>Descripción</th>
                <th>Estado</th>
                </thead>
                <tbody>
                    <tr>

                        <!-- detalle tramite en el tr -->
                        <td>No. incidencia</td>
                        <td>XXXXXXXXXX</td>
                        <td>Abierto/Cerrado</td>
                    </tr>
                    <tr>

                        <!-- detalle tramite en el tr -->
                        <td><a href="consultar_hilo_incidencia.html">asd</a></td>
                        <td></td>
                        <td></td>
                    </tr>

                </tbody>
            </table>
        </div>
    </div>
</body>
</html>