<?php include __DIR__ . '/controller.php'; ?>
<style>
    <?php include __DIR__ . '/template.css';
    ?>
</style>

<div class="creacioArticulo">
    <h3 class="errores">
        <?= $errores ?>
    </h3>
    <h1>CREACIÓ D'ARTICLES</h1>
    <form action="#" method="post" id="form" enctype="multipart/form-data">
        <div id="part1" class="part-form-top">
            <label for="titulo">Introduïu el títol de l'Articulo: </label> <br />
            <input type="text" name="name" id="name" class="name" required />
            <div class="button" onclick="animation()">
                <a href="#part2">SEGÜENT</a>
            </div>
        </div>
        <div id="part2" class="part-form reveal">
            <label for="mail">Introduïu la Tag: </label> <br />
            <input list="tags" name="tag" id="tag">
            <datalist id="tags">
                <option value="Departamento1">
                <option value="Departamento2">
                <option value="Departamento3">
                <option value="Departamento4">
                <option value="Departmento5">
            </datalist>
            <div class="button">
                <a href="#part1">TORNAR</a>
                <a href="#part3">SEGÜENT</a>
            </div>
        </div>
        <div id="part3" class="part-form reveal">
            <label for="image">Tens una foto per a l'article?</label> <br />
            <!-- Componente ArrastrarArchivos -->
            <?php include '../../../components/arrastrarArchivos/component.php' ?>
            <div class="button">
                <a href="#part2">TORNAR</a>
                <a href="#part4">SEGÜENT</a>
            </div>
        </div>
        <div id="part4" class="part-form reveal">
            <label for="descripcion">Introduïu el contingut de l'article:</label>
            <br />
            <textarea name="descripcion" id="descripcion" cols="30" rows="10"></textarea>
            <div class="button">
                <a href="#part3">TORNAR</a>
                <div class="button-submit">
                    <input type="submit" name="enviar" value="SUBMIT" />
                </div>
            </div>
        </div>
    </form>
</div>