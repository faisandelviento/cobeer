<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../styles/layout.css">
    <link rel="stylesheet" href="../../styles/globals.css">
    <script src="https://cdn.jsdelivr.net/npm/pace-js@latest/pace.min.js"></script>
    <title>Articulo</title>
</head>

<body>
    <!-- <div id="gradient" /> -->

    <div class="layout">
        <header>
            <?php include '../../../components/header/component.php' ?>
        </header>
        <main>
            <div class="articuloDepartamento">
                <?php include '../../../components/articleCompleto/component.php' ?>
            </div>
        </main>
        <footer>
            <div> <?php include '../../../components/footer/component.php' ?></div>
        </footer>
</body>
</html>