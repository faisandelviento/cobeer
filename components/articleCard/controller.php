<?php
include __DIR__ . '/../../DB/classes/Recurso.php';

function getFirstImage($articleId)
{
    $recursosDB = new Recurso();
    $firstImage = $recursosDB->listWith($articleId)[0];
    // str_replace("/","\\",$firstImage);
    return $firstImage["url"];
}
?>