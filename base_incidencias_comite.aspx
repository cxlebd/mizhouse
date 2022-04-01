﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Incidencias  Comite</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo-claro">
    
    <!-- Cuerpo -->
    <div class="container">
    <!-- Men� -->
    <nav>
        <ul>
            <li>
                <a href="index.aspx"><img src="./img/logo_sin_fondo.png"></a>
            </li>
            <li>
                <a href="chat_administracion_comite.html"><img src="./img/administracion.png" alt=""></a><!--chat administracion-->
            </li>
            <li>
                <a href="chat_residente_comite.html"><img src="./img/residente.png" alt=""></a><!--chat residente-->
            </li>

            <li>
                <a href="balance_comite.html"><img src="./img/balance.png" alt="" /></a>
            </li>
            <li>
                <a href="tramites_comite.html"><img src="./img/tramites.png" alt=""></a>
            </li>
            <!--quite incidencias ya que es la actual-->

            <li>
                <a href="consultar_edo_cuenta.html"><img src="./img/estado cuenta.png" alt=""></a>
            </li>
            <li>
                <a href="base_solicitudes_comite.html"><img src="./img/solicitudes.png" alt=""></a>
            </li>
            <li>
                <a href="miembros_unidad_comite.html"><img src="./img/cargadatos.png" alt=""></a>
            </li>
            <li>
                <a href="editar_cuenta_comite.aspx"><img src="./img/perfil.png" alt=""></a>
            </li>
        </ul>
    </nav>
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
                        <td><a href="consultar_hilo_incidencia_comite.html">asd</a></td>
                        <td></td>
                        <td></td>
                    </tr>

                </tbody>
            </table>
        </div>
    </div>
</body>
</html>