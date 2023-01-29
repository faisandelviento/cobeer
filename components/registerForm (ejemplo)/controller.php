<?php 
include __DIR__.'/../../DB/classes/Usuario.php';

if(isset($_POST['send'])){

    $correo = $_POST['correo'];
    $pass = $_POST['pass'];
    $nombre = $_POST['nombre'];
    $apellidos = $_POST['apellidos'];
    $send = $_POST['send'];

    $usuarioDB = new Usuario(array("nombre" => $nombre, "apellidos" => $apellidos, "correo" => $correo, "pass" => $pass)); 
    $usuario = $usuarioDB->insert();


    if($usuario["id"]!=0){
        $_SESSION['usuario']=$usuario;
        echo "Registrado correctamente";
        echo "Id: ". $usuario["id"];
    }else{ 
        echo "Error registrando usuario";
    }
    
}
?>