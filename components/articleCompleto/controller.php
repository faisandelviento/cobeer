<?php
include __DIR__ . '/../../DB/classes/Recurso.php';
include __DIR__ . '/../../DB/classes/Articulo.php';

function getArticulo($id)
{
    $articulosDB = new Articulo();
    $articulo = $articulosDB->listWith($id)[0];
    return $articulo;
}

function getImagenes($id)
{
    $recursosDB = new Recurso();
    $imagenes = $recursosDB->listWith($id);
    return $imagenes;
}
?>