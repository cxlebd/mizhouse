﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tramites Comite</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo-claro">
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
                <a href="chat_residente_comite"><img src="./img/residente.png" alt=""></a><!--chat residente-->
            </li>

            <li>
                <a href="balance_comite.html"><img src="./img/balance.png" alt=""></a>
            </li>
            <!--quite tramite porque es la actual-->
            <li>
                <a href="base_incidencias_comite.html"><img src="./img/incidencias.png" alt=""></a>
            </li>
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

    <!-- Cuerpo -->
    <div class="container">
        <div class="container-tramites">
            <h1>Tr�mites</h1>
            <p>Haga click en el tr�mite para ver el documento del tr�mite</p>
            <table>
                <thead>
                <th>No. Tr�mite</th>
                <th>Descripci�n</th>
                <th>Folio</th>
                </thead>
                <tbody>
                    <tr>

                        <!-- detalle tramite en el tr -->
                        <td><a href="consultar_tramite_comite.html">asd</a></td>
                        <td>XXXXXXXXXX</td>
                        <td>XXXXXXXXXX</td>
                    </tr>

                </tbody>
            </table>
        </div>
    </div>
</body>
</html>