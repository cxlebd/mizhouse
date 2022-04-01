﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Consultar Tr�mite comite</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo-claro">
    <!-- Men� -->
    <nav>
        <ul>
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
                <!--agregue tramite para regresar a la tabla general tramite comite-->
                <a href="tramites_comite.html"><img src="./img/tramites.png" alt=""></a>
            </li>
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
                <a href="editar_cuenta_comite.html"><img src="./img/perfil.png" alt=""></a>
            </li>
        </ul>
    </nav>


    <!-- Cuerpo -->
    <div class="container">
        <div class="container-tramites">
            <div class="div-consultar">
                <h1>Tr�mite No.x</h1>
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