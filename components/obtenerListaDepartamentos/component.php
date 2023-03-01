<?php
include __DIR__ . '/../../DB/classes/Departamentos.php';
function getArticulos()
{
    $departamentosDB = new Departamentos();
    $departamentos = $departamentosDB->list();
    // var_dump($departamentos);
    foreach ($departamentos as $departamento) {
        var_dump ($departamento['nombre'], );
    }
}
getArticulos();
?>