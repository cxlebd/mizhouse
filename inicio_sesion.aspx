﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio sesión</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body class="fondo">
    <div class="registro-chico">
        <div class="div-img">
            <img src="img/gato_sin_fondo.png" alt="mizhouse">
        </div>
        <div class="div-formulario">
            <h2>Bienvenido de nuevo</h2>
            <h3>Nos alegramos mucho de volver a verte</h3>
            <form class="formulario">
                <section class="registro-sect">
                    <div class="la">
                        <label for="">CORREO ELECTRÓNICO:</label>
                        <input type="text">
                    </div>
                    <div class="la">
                        <label for="">CONTRASEÑA:</label>
                        <input type="text">
                        <a href="./recuperar_contraseña.html">¿Has olvidado tu contraseña?</a>
                    </div>                    
                    <div class="la">
                        <button class="btn btn-morado">Continuar</button>
                        <a href="./registro.aspx">¿No tienes una cuenta?</a>
                    </div>
                </section>                
            </form>
        </div>
    </div>
</body>
</html>
