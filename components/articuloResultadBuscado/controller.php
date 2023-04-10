<?php
include __DIR__ . '/../../DB/classes/Articulo.php';

function getArticulosTagged($tag)
{
    $articulosDB = new Articulo();
    $articulos = $articulosDB->search($tag);
    foreach ($articulos as $articulo) {
        include dirname(__DIR__, 1) . '/articleCard/component.php';
    }
}
?>