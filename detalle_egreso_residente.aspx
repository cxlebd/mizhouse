﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalle Egreso</title>
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
            <!-- Agregue balance residente para volver a la tabla balance general -->
            <li>
                <a href="tramites_residente.html"><img src="./img/tramites.png" alt=""></a>
            </li>
            <li>
                <a href="miembros_unidad.html"><img src="./img/cargadatos.png" alt=""></a>
            </li>
            <li>
                <a href="editar_cuenta.html"><img src="./img/perfil.png" alt=""></a>
            </li>
        </ul>
    </nav>
    <div class="container">
        <div class="container-der">
            <div class="egreso">
                <p>Egreso No.x</p>
                <p>Monto:</p>
                <p>$0.00</p>
            </div>
            <div class="comprobantes">
                <div class="comprobante">
                    <p>Comprobante de gasto y de transacción</p>
                    <div class="bloques">
                        <div class="bloque">
                            <p>Modificado por:</p>
                            <div class="img-bloque">
                                <img src="./img/documento.png" alt="">
                            </div>
                            <p>Transacción</p>
                        </div>
                        <div class="bloque">
                            <p>Modificado por:</p>
                            <div class="img-bloque">
                                <img src="./img/documento.png" alt="">
                            </div>
                            <p>Gasto</p>
                        </div>
                    </div>
                </div>
                <div class="comprobante">
                    <p>Evidencias de ejecución</p>
                    <div class="bloques">
                        <div class="bloque">
                            <p>Modificado por:</p>
                            <div class="img-bloque">
                                    <img src="./img/documento.png" alt="">
                            </div>
                            <p>Antes</p>
                        </div>
                        <div class="bloque">
                            <p>Modificado por:</p>
                            <div class="img-bloque">
                                <img src="./img/documento.png" alt="">
                            </div>
                            <p>Después</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>