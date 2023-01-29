<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Articulos</title>
    <script src="https://cdn.jsdelivr.net/npm/pace-js@latest/pace.min.js"></script>
</head>

<body>

    <!--Header para el logo, menu y titulo de pagina-->
    <header>
        <div> <input type="image" placeholder="ImageLogo" multiple></div> <br>
        <h2>Creación Artículo</h2>
        <nav placeholder="menu">
            <ol>
                <li>
                    <a href="http://localhost/cobeer/view/pages/home/">Inici</a>
                    <a href="#">Depts</a>
                    <a href="crear_articulo.html">Control Panel</a>
                    <a href="#">Login</a>
                </li>
            </ol>
        </nav>
    </header>

    <!--Main las cajas de texto y imagenes-->
    <main>
        <section>
            <div><input type="text" maxlength="20" placeholder="Escriba el Título" autofocus required></div> <br>
            <div><textarea name="story" rows="10" cols="40" placeholder="Description del Artículo"></textarea></div>
            <br>
            <div> TAG: <input type="text" placeholder="Exemplo: #Diversos" autofocus required></div> <br>
            <div><input type="image" placeholder=" Imagen o video (Upload el fichero) " multiple></div> <br>
            <div type="submit" valor="Enviar Articulo">
        </section>
    </main>

</body>

</html>