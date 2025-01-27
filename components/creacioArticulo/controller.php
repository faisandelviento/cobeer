<?php
include __DIR__ . '/../../DB/classes/Articulo.php';
include __DIR__ . '/../../DB/classes/Recurso.php';

include __DIR__ . '/../../DB/classes/Departamentos.php';
include __DIR__ . '/../../services/storage/index.php';
if (isset($_POST['enviar'])) {
    try {

        $titulo = $_POST['name'];
        $autor = $_POST['autor'];
        $departamento = $_POST['departamento'];
        $descripcion = $_POST['descripcion'];
        // $departamento = 1;
        $resumen = $_POST['resumen'];
        $tags = $_POST['tag'];

        $articuloDB = new Articulo(
            array(
                "titulo" => str_replace("'","\'",$titulo),
                "autor" => $autor,
                "descripcion" => str_replace("'","\'",$resumen),
                "idDepartamento" => $departamento,
                "fechaCreacion" => date("Y-m-d")." ".date("H:m"),
                "texto" => str_replace("'","\'",$descripcion),
                "tags" => $tags
            )
        );

        $articulo = $articuloDB->insert();

        $paths = storeFiles($_FILES["fileToUpload"], $articulo['id']);
        foreach ($paths as $path) {
            $path = str_replace("\\","/",$path);
            // echo $path;
            $recursoDB = new Recurso(
                array(
                    "url" => $path,
                    "idArticulo" => $articulo['id']
                )
            );
            $recurso = $recursoDB->insert();
        }

    } catch (Exception $e) {

        $errores = "Hay que revisar esos puntos : <br> " . $e->getMessage();

    }
    // $file = $_FILES['file'];

}

function getDepartamentos():array
{
    $departamentosDB = new Departamentos();
    $departamentos = $departamentosDB->list();
    $selectDepartamentos = [];
    foreach ($departamentos as $departamento) {
        // Recojo toda la query y escojo aquello que necesito
        $selectDepartamentos[$departamento['nombre']] = $departamento['id'];
    }
    echo $selectDepartamentos;
    return $selectDepartamentos;
}
?>