﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>consultar cuenta comite</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo">
    
    <div class="registro">
        <div class="div-img">
            <img src="img/gato_sin_fondo.png" alt="mizhouse">
        </div>
        <div class="div-formulario">
            <h2>Cuenta del miembro de comite : </h2>
            <form class="formulario">
                <section class="registro-sect">
                    <div class="la">
                        <label for="">CORREO ELECTR�NICO:</label>
                        <input type="text" readonly>
                    </div>
                    <div class="la">
                        <label for="">CONTRASE�A:</label>
                        <input type="text" readonly>
                    </div>
                    <div class="departamento-rol">
                        <div>
                            <label for="">DEPARTAMENTO:</label><br>
                            <input type="text" class="depa" readonly>
                        </div>
                        <div>
                            <label for="">ESTADO DE RESIDENTE:</label><br>
                            <input type="text" readonly>
                        </div>
                    </div>
                    <!-- <div class="btn-group">
                        <button class="btn btn-morado">Guardar cambios</button>
                        <button class="btn btn-morado">Descartar cambios</button>
                        <button class="btn btn-rojo">Darse de baja</button>
                    </div> -->
                </section>
                <section class="registro-sect">
                    <div class="la">
                        <label for="">NOMBRE:</label>
                        <input type="text" readonly>
                    </div>
                    <div class="la">
                        <label for="">APELLIDO PATERNO:</label>
                        <input type="text" readonly>
                    </div>
                    <div class="la">
                        <label for="">APELLIDO MATERNO:</label>
                        <input type="text" readonly>
                    </div>
                    <div class="la">
                        <label for="">CELULAR:</label>
                        <input type="text" readonly>
                    </div>
                    <div class="la">
                        <label for="">TEL�FONO CASA:</label>
                        <input type="text" readonly>
                    </div>
                    <div>
                        <label for="">COMPA��A TELEF�NICA:</label>
                        <input type="text" readonly>
                    </div>
                </section>
            </form>
        </div>
    </div>
</body>
</html>