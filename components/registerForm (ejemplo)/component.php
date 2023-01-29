<?php include __DIR__.'/controller.php'; ?>
<style> <?php include __DIR__.'/template.css'; ?> </style>

<form name="registerForm" method="post">
        <input type="text" name="nombre" placeholder="Nombre">
        <input type="text" name="apellidos" placeholder="Apellidos">
        <input type="text" name="correo" placeholder="Correo">
        <input type="password" name="pass" placeholder="Contraseña">
        <input type="hidden" name="send" value="1">
        <input type="submit" value="REGISTER" id="boto">         
</form>