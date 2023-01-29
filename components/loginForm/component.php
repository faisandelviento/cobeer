<style>
<?php include __DIR__ . '/template.css';
?>
</style>


<form class="loginForm" action="http://localhost/cobeer/view/pages/controlPanel/">
    <img src="http://localhost/cobeer/assets/icono-login/usuario.png" alt="Icono de usuario"
        style="filter: invert(13%) sepia(24%) saturate(1081%) hue-rotate(336deg) brightness(93%) contrast(88%); width: 200px;" />

    <div class="loginFormContainer">
        <div class="loginFormInputs">
            <input class="loginFormInput" type="text" />
            <input class="loginFormInput" type="text" />
        </div>
        <div>
            <input id="enviar" type="submit" value=">">
        </div>
    </div>
</form>