<style>
    <?php include __DIR__ . '/template.css'; ?>
</style>

<div class="main">
    <input type="checkbox" id="chk" aria-hidden="true">

    <div class="signup">
        <form>
            <label for="chk" aria-hidden="true" class="label-login">Sign up</label>
            <input type="text" name="txt" placeholder="User name" required="" class="input-login">
            <input type="email" name="email" placeholder="Email" required="" class="input-login">
            <input type="password" name="pswd" placeholder="Password" required="" class="input-login">
            <button class="button-login">Sign up</button>
        </form>
    </div>

    <div class="login">
        <form>
            <label for="chk" aria-hidden="true" class="label-login">Login</label>
            <input type="email" name="email" placeholder="Email" required="" class="input-login">
            <input type="password" name="pswd" placeholder="Password" required="" class="input-login">
            <button class="button-login">Login</button>
        </form>
    </div>
</div>