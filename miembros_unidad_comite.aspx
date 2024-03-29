﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Miembros de unidad</title>
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
                <a href="chat_residente_comite.html"><img src="./img/residente.png" alt=""></a><!--chat residente-->
            </li>

            <li>
                <a href="balance_comite.html"><img src="./img/balance.png" alt="" /></a>
            </li>
            <li>
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
            <!--quite miembros unidad ya que es la actual-->
            <li>
                <a href="editar_cuenta_comite.aspx"><img src="./img/perfil.png" alt=""></a>
            </li>
        </ul>
    </nav>

    <!-- Cuerpo -->
    <div class="container">
        <div class="container-tramites">
            <h1>Miembros de unidad</h1>
            <p>Haga click en el usuario que le interese ver detalles</p>
            <table>
                <thead>
                <th>Miembro</th>
                <th>Correo</th>
                <th>Rol</th>
                </thead>
                <tbody>
                    <tr>


                        <td>No. de usuario</td>
                        <td>Correo de Registro</td>
                        <td>Tipo de Usuario </td>
                    </tr>
                    <tr>


                        <td><a href="consultar_perfil_residente.html">ejemplo residente</a></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>


                        <td><a href="consultar_perfil_comite.html">ejemplo comite</a></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>


                        <td><a href="consultar_perfil_administrador.html">ejemplo administrador</a></td>
                        <td></td>
                        <td></td>
                    </tr>

                </tbody>
            </table>
        </div>
    </div>
</body>
</html>