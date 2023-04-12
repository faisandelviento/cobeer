<style>
    <?php include __DIR__ . '/template.css'; ?>
</style>

<div class="main">
    <input type="checkbox" id="chk" aria-hidden="true">

    <div class="signup">
        <form>
            <img for="chk" aria-hidden="true" class="label-login" style="width: 170px; margin-left: 90px;" src="http://localhost/cobeerpersonal/usuario.png" alt=" icono usuario provicional" /> <br>
            <input type="text" name="txt" placeholder="Usuario" required="" class="input-login">
            <input type="password" name="pswd" placeholder="Password" required="" class="input-login">
            <a href="" style="margin-left: 60px; margin-top: 5px;">¿Olvidó su contraseña?</a>
            <button class="button-login" type="submit">Iniciar</button> <br> <br>
        </form>
    </div>

    <div class="login">
        <form>
            <label for="chk" aria-hidden="true" class="label-login">Sign Up</label>
            <input type="text" name="email" placeholder="Nombre" required="" class="input-login">
            <input type="text" name="pswd" placeholder="Apellido" required="" class="input-login">
            <input type="text" name="email" placeholder="DNI" required="" class="input-login">
            <input type="password" name="pswd" placeholder="Password" required="" class="input-login">
            <button class="button-login">Register</button>
        </form>
    </div>
</div>
  