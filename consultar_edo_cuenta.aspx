﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultar Estado cuenta</title>
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
                <a href="chat_administracion_comite.html"><img src="./img/administracion.png" alt=""></a><!--chat administracion-->
            </li>
            <li>
                <a href="chat_residente_comite.html"><img src="./img/residente.png" alt=""></a><!--chat residente-->
            </li>

            <li>
                <a href="balance_comite.html"><img src="./img/balance.png" alt=""></a>
            </li>
            <li>

                <a href="tramites_comite.html"><img src="./img/tramites.png" alt=""></a>
            </li>
            <li>
                <a href="base_incidencias_comite.html"><img src="./img/incidencias.png" alt=""></a>
            </li>
            <!--quite estado cuenta porque es la actual-->
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
            <div class="div-consultar">
                <h1>Estado de cuenta</h1>                
                <button class="btn btn-morado">Descargar documento</button>
            </div>
            <div class="img-consultar">
                <img src="./img/documento.png" alt="">
            </div>
        </div>
    </div>
</body>
</html>