<?php
include __DIR__ . '/../../DB/classes/Articulo.php';
include __DIR__ . '/../../services/storage/index.php';
if (isset($_POST['enviar'])) {
    try {
        $paths = storeFiles($_FILES["fileToUpload"]);
        foreach ($paths as $path) {
            echo $path;
            //indsert de los recursos
        }
        // storeFile($_FILES["fileToUpload"]);

        $titulo = $_POST['name'];
        $autor = $_POST['autor'];
        $departamento = $_POST['departamento'];
        $descripcion = $_POST['descripcion'];
        $resumen = $_POST['resumen'];
        $tags = $_POST['tag'];



        $articuloDB = new Articulo(
            array(
                "titulo" => $titulo,
                "autor" => $autor,
                "descripcion" => $descripcion,
                "texto" => $resumen,
                "tags" => $tags
            )
        );

        $articulo = $articuloDB->insert();


    } catch (Exception $e) {

        $errores = "Hay que revisar esos puntos : <br> " . $e->getMessage();

    }
    // $file = $_FILES['file'];

}



?>