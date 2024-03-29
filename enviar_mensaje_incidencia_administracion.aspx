﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Balance residente</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo-claro">
    <!-- Menú -->
    <nav>
        <ul>
            <li>
                <a href="inicio_sesion.html"><img src="./img/gato_sin_fondo.png" alt=""></a>
            </li>
            <li>
                <a href="chat_residente_administrador.html"><img src="./img/residente.png" alt=""></a><!--chat administracion-->
            </li>
            <li>
                <a href="chat_comite_administrador.html"><img src="./img/comite.png" alt=""></a><!--chat residente-->
            </li>
            <li>
                <a href="balance_administrador.html"><img src="./img/balance.png" alt="" /></a>
            </li>
            <li>
                <a href="tramites_administrador.html"><img src="./img/tramites.png" alt=""></a>
            </li>
            <li>
                <a href="base_incidencias_administrador.html"><img src="./img/incidencias.png" alt=""></a>
            </li>
            <li>
                <a href="subir_edo_cuenta.html"><img src="./img/estado cuenta.png" alt=""></a>
            </li>
            <li>
                <a href="base_solicitudes_administardor.html"><img src="./img/solicitudes.png" alt=""></a>
            </li>
            <li>
                <a href="miembros_unidad_administrador.html"><img src="./img/cargadatos.png" alt=""></a>
            </li>
            <li>
                <a href="editar_cuenta_administrador.html"><img src="./img/perfil.png" alt=""></a>
            </li>
        </ul>
    </nav>

    <!-- Cuerpo -->
    <div class="container">
        <div class="container-tramites">
            <div class="div-editar">
                <h1>Incidencia No.x</h1>
            </div>
            <form action="" class="editar-tramite">
                <div>
                    <label for="">Estado: Abierto/Cerrado</label><br>
                </div>
                <div>
                    <label for="">Descripción:</label><br>
                    <input type="text">
                </div>
            </form>
            <div class="img-consultar">
                <div class="text-documento">
                    <p>Mensaje:</p>
                    <button class="btn btn-morado">Subir documento (opcional)</button>
                </div>
                <textarea id="" cols="30" rows="10"></textarea>
                <br>
                <div class="btn-group">
                    <button class="btn btn-morado">
                        Enviar mensaje
                    </button>
                    <button class="btn btn-morado">
                        Cancelar
                    </button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>