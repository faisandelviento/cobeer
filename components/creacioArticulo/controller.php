<?php
include __DIR__ . '/../../DB/classes/Articulo.php';
include __DIR__ . '/../../services/storage/index.php';
if (isset($_POST['enviar'])) {
    try {

        $titulo = $_POST['name'];
        $autor = $_POST['autor'];
        $departamento = $_POST['departamento'];
        $descripcion = $_POST['descripcion'];
        $departamento = 1;
        $resumen = $_POST['resumen'];
        $tags = $_POST['tag'];



        $articuloDB = new Articulo(
            array(
                "titulo" => $titulo,
                "autor" => $autor,
                "descripcion" => $descripcion,
                "idDep" => $departamento,
                "texto" => $resumen,
                "tags" => $tags
            )
        );

        $articulo = $articuloDB->insert();

        $paths = storeFiles($_FILES["fileToUpload"], $articulo['idArt']);
        foreach ($paths as $path) {
            echo $path;
            //indsert de los recursos
        }

    } catch (Exception $e) {

        $errores = "Hay que revisar esos puntos : <br> " . $e->getMessage();

    }
    // $file = $_FILES['file'];

}



?>