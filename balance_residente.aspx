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
                <a href="index.aspx"><img src="./img/gato_sin_fondo.png"></a>
            </li>
            <li>
                <!-- Chat Administracion -->
                <a href="chat_administracion_residente.html"><img src="./img/administracion.png" alt=""></a>
            </li>
            <li>
                <!-- Chat comite -->
                <a href="chat_comite_residente.html"><img src="./img/comite.png" alt=""></a>
            </li>

            <!-- Quité balance por ser la ventana actual -->
            <li>
                <a href="tramites_residente.html"><img src="./img/tramites.png" alt=""></a>
            </li>
            <li>
                <a href="miembros_unidad.html"><img src="./img/cargadatos.png" alt=""></a>
            </li>
            <li>
                <a href="editar_cuenta.aspx"><img src="./img/perfil.png" alt=""></a>
            </li>
        </ul>
    </nav>

    <!-- Cuerpo -->
    <div class="balance">
        <div class="div-balance">
            <h1>El balance actual es de:</h1>
            <h2>$0.00</h2>
            <h3>* este balance es: (preliminar o definitivo)</h3>
        </div>
        <div class="div-aportacion">
            <h1>Tu aportación es de:</h1>
            <h2>$0.00</h2>
        </div>
        <div class="div-movimientos">
            <h1>Movimientos</h1>
            <h2>Haga click en algún movimiento para ver detalles</h2>
            <div class="tablas enlace_blanco">
                <table>
                    <th colspan="2">Ingresos</th><!--Aca va el detalle de ingresos-->
                    <tbody>
                        <tr>
                            <td><a href="detalle_ingreso_residente.html">1</a></td>
                            <td>$00.0</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>$00.0</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>$00.0</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>$00.0</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>$00.0</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>$00.0</td>
                        </tr>
                    </tbody>
                </table>
                <table>
                    <th colspan="2">Egresos</th>
                    <tbody>
                        <tr>
                            <td><a href="detalle_egreso_residente.html">1</a></td>
                            <td>$00.0</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>$00.0</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>$00.0</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>$00.0</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>$00.0</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>$00.0</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>