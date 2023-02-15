<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../styles/layout.css">
    <link rel="stylesheet" href="../../styles/globals.css">
    <!-- <link rel="stylesheet" href="stylesControl.css"> -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
    <link href='https://fonts.googleapis.com/css?family=Catamaran' rel='stylesheet'>
    <title>Login</title>
    <script src="https://cdn.jsdelivr.net/npm/pace-js@latest/pace.min.js"></script>
</head>

<body>
    <div class="layout">
        <div class="headerLogin">
            <?php include '../../../components/header/component.php'; ?>
    </div>

        <main>
            <!-- FORMULARIO LOGIN -->
            <!-- <div class="centeredContainer">
                <?php //include '../../../components/loginForm/component.php';?>
            </div> -->
            <!-- Login Yassine MOVER A COMPONENTE -->
            <!-- <div class="login">
                 <h1>Login</h1>
                <div class="usuario">
                    <input class="input" type="text" placeholder="usuario">
                    <input class="input" type="text" placeholder="contraseña">
                    <button class="button is-black"><a href="/cobeer/view/pages/controlPanel">Iniciar</a></button>
                    <a href="#">
                        <p>¿Olvidó su contraseña?</p>
                    </a>
                </div> 
                <?php // include "components/loginForm/component.php" ?>

            </div>   -->
            <?php include "../../../components/loginForm/component.php" ?>
        </main>

        <footer>
            <?php include '../../../components/footer/component.php' ?>
        </footer>
        </section>
</body>

</html>