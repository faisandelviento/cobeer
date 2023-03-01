<?php
include __DIR__ . '/../../DB/classes/Articulo.php';
include __DIR__ . '/../../services/storage/index.php';

if (isset($_POST['enviar'])) {

    // $file = $_FILES['file'];
    storeFile($_FILES["fileToUpload"]);
    // $articuloDB = new Articulo(array());
    // $articulo = $articuloDB->insert();
}
?>