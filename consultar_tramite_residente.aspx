﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultar Trámite</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo-claro">
    <!-- Menú -->
    <nav>
        <ul>
            <li>
                <!-- Chat Administracion -->
                <a href=""><img src="./img/administracion.png" alt=""></a>
            </li>
            <li>
                <!-- Chat comite -->
                <a href="chat_comite_residente.html"><img src="./img/comite.png" alt=""></a>
            </li>
            <li>
                <a href="balance_residente.html"><img src="./img/balance.png" alt=""></a>
            </li>
            <!-- pongo tramites para poder volver a la tabla general -->
            <li>
                <a href="tramites_residente.html"><img src="./img/tramites.png" alt=""></a><!-- falta base incidencias -->
            </li>
            <li>
                <a href="base_incidencias_residente.html"><img src="./img/incidencias.png" alt=""></a><!-- falta base incidencias -->
            </li>
            <li>
                <a href="miembros_unidad.html"><img src="./img/cargadatos.png" alt=""></a>
            </li>
            <li>
                <a href=""><img src="./img/perfil.png" alt=""></a>
            </li>
        </ul>
    </nav>


    <!-- Cuerpo -->
    <div class="container">
        <div class="container-tramites">
            <div class="div-consultar">
                <h1>Trámite No.x</h1>
                <p>Folio:XXXXXX</p>
                <button class="btn btn-morado">Descargar documento</button>
            </div>
            <div class="img-consultar">
                <img src="./img/documento.png" alt="">
            </div>
        </div>
    </div>
</body>
</html>