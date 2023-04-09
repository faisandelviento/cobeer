<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Articulos</title>
    <script src="https://cdn.jsdelivr.net/npm/pace-js@latest/pace.min.js"></script>
    <link rel="stylesheet" href="../../styles/layout.css">
    <link rel="stylesheet" href="../../styles/globals.css">
</head>

<body>

    <!--Header para el logo, menu y titulo de pagina-->
    <header id="header">
        <?php include '../../../components/header/component.php' ?>
    </header>

    <!--Main las cajas de texto y imagenes-->
    <main>
        <!-- Componente artículos -->
        <?php include '../../../components/creacioArticulo/component.php' ?>
    </main>

    <footer>
        <div>
            <?php include '../../../components/footer/component.php' ?>
        </div>
    </footer>

</body>

</html>