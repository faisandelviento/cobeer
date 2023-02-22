<?php
include __DIR__ . '/../../DB/classes/Articulo.php';
function getArticulos()
{
    $articulosDB = new Articulo();
    $articulos = $articulosDB->list();
    foreach ($articulos as $articulo) {
        include dirname(__DIR__, 1) . '\articleCard\component.php';
    }
}
?>