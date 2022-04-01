﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hilo incidencia comite</title>
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
            <li>
                <a href="base_solicitudes_administardor.aspx"><img src="./img/solicitudes.png" alt=""></a>
            </li>
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
            <div class="div-consultar">
                <h1>Incidencia No.x</h1>
                <p>Descripción:</p>
                <a href="enviar_mensaje_incidencia_administracion.html"><button class="btn btn-morado">Agregar mensaje</button></a>
            </div>
            <div class="div-hilo">
                <div>Mensaje del comité</div>
                <div>Mensaje de la administración</div>
            </div>
        </div>
    </div>
</body>
</html>