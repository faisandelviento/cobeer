<?php
include __DIR__ . '/../../DB/classes/Articulo.php';
include __DIR__ . '/../../services/storage/index.php';

if (isset($_POST['enviar'])) {
    try {
        storeFile($_FILES["fileToUpload"]);
    } catch (Exception $e) {

        $errores = "Hay que revisar esos puntos : <br> " . $e->getMessage();

    }
    // $file = $_FILES['file'];
    // $articuloDB = new Articulo(array());
    // $articulo = $articuloDB->insert();
}
?>