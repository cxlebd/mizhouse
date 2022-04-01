﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hilo incidencia</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo-claro">
    <!-- Menú -->
    <nav>
        <ul>
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
            <!-- puse incidencias para regresar a la tabla general de inicdencias -->
            <li>
                <a href="base_incidencias_residente.html"><img src="./img/incidencias.png" alt="" /></a>
            </li>

            <li>
                <a href="miembros_unidad.html"><img src="./img/cargadatos.png" alt=""></a>
            </li>
            <li>
                <a href="editar_cuenta.html"><img src="./img/perfil.png" alt=""></a>
            </li>
        </ul>
    </nav>
    <!-- Cuerpo -->
    <div class="container">
        <div class="container-tramites">
            <div class="div-consultar">
                <h1>Incidencia No.x</h1>
                <p>Descripción:</p>
            </div>
            <div class="div-hilo">
                <div>Mensaje del comité</div>
                <div>Mensaje de la administración</div>
            </div>
        </div>
    </div>
</body>
</html>