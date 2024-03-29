﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalle egreso comite</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo-claro">
    <!-- Menú -->
    <nav>
        <ul>
            <li>
                <a href="chat_administracion_comite.html"><img src="./img/administracion.png" alt=""></a><!--chat administracion-->
            </li>
            <li>
                <a href="chat_residente_comite.html"><img src="./img/residente.png" alt=""></a><!--chat residente-->
            </li>
            <!--agregue balance para regresar a la tabla general balance comite-->
            <li>
                <a href="balance_comite.html"><img src="./img/balance.png" alt=""></a>
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
            <li>
                <a href="miembros_unidad_comite.html"><img src="./img/cargadatos.png" alt=""></a>
            </li>
            <li>
                <a href="editar_cuenta_comite.html"><img src="./img/perfil.png" alt=""></a>
            </li>
        </ul>
    </nav>
    <div class="container">
        <div class="container-der">
            <div class="egreso-comite">
                <p>Egreso No.x</p>
                <div class="btn-group">
                    <button class="btn btn-morado">Guardar cambios</button>
                    <button class="btn btn-morado">Descartar cambios</button>
                </div>
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
                            <button class="btn btn-morado">Subir archivo</button>
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