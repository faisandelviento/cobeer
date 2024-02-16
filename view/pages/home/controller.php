<?php
require_once __DIR__ .'../../../../DB/classes/Recurso.php';
require_once __DIR__ .'../../../../DB/classes/Articulo.php';

function borrarArticle(){
    try {
        $idArticulo = $_POST['id'];
        $pass = $_POST['clau'];

        if( $pass == "drocacobeer"){
          $articuloDB = new Articulo(
          );
          
          $recursosDB = new Recurso(
          );
          
          $recurso = $recursosDB->delete($idArticulo);
          $articulo = $articuloDB->delete($idArticulo);
        }
    } catch (Exception $e) {
      $errores = "Hay que revisar esos puntos : <br> " . $e->getMessage();
    }
}

function editarArticle(){
  try{
    $idArticulo = $_POST['id'];
    // if(){}
  }

}
?>