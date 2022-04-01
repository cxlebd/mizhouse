﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Informes</title>
    <link rel="stylesheet" href="./css/style3.css">
</head>
<body class="claro">
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
    <div class="container">
        <div class="cabecera">
            <div class="titulo-boton">
                <h1>Informe del (MM/AAAA)</h1>
                <div class="btn btn-morado">Descargar documento</div>
            </div>
        </div>
        <div class="tabla-detalle-informe">
            
        </div>
    </div>
</body>
</html>