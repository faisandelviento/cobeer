<?php include __DIR__ . '/controller.php'; ?>
<style>
<?php include __DIR__ . '/template.css';
?>
</style>

<div class="creacioArticulo">
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
            <label for="mail">Introduïu el responsable: </label> <br />
            <input type="text" name="autor" id="autor" class="autor" required />
            <div class="button">
                <a href="#header">TORNAR</a>
                <a href="#part3">SEGÜENT</a>
            </div>
        </div>
        <div id="part3" class="part-form reveal">
            <label for="descripcion">Introduïu el departament:</label>
            <br />
            <input list="departamentos" name="departamento" id="departamento">
            <datalist id="departamentos">
                <option value="1">Departamento1</option>
                <option value="2">Departamento2</option>
                <option value="3">Departamento3</option>
                <option value="4">Departamento4</option>
                <option value="5">Departamento5</option>
            </datalist>
            <div class="button">
                <a href="#part2">TORNAR</a>
                <a href="#part4">SEGÜENT</a>
            </div>
        </div>
        <div id="part4" class="part-form reveal">
            <label for="descripcion">Introduïu el contingut de l'article:</label>
            <br />
            <textarea name="descripcion" id="descripcion" cols="30" rows="10" required></textarea>
            <div class="button">
                <a href="#part3">TORNAR</a>
                <a href="#part5">SEGÜENT</a>
            </div>
        </div>
        <div id="part5" class="part-form reveal">
            <label for="resumen">Introduïu un resumen: </label> <br />
            <textarea name="resumen" id="resumen" maxlength="150"></textarea>
            <div>
                <h6>*No es obligatorio</h6>
            </div>
            <div class="button">
                <a href="#part4">TORNAR</a>
                <a href="#part6">SEGÜENT</a>
            </div>
        </div>
        <div id="part6" class="part-form reveal">
            <label for="tag">Introduïu el Tag o els Tags: </label> <br />
            <input type="text" name="tag" id="tag" class="tag" placeholder="Ejemplo: #estoesguay,#estomolamas"
                required />
            <div class="button">
                <a href="#part5">TORNAR</a>
                <a href="#part7">SEGÜENT</a>
            </div>
        </div>
        <div id="part7" class="part-form reveal">
            <label for="image">Tens una foto per a l'article?</label> <br />
            <!-- Componente ArrastrarArchivos -->
            <?php include '../../../components/arrastrarArchivos/component.php' ?>
            <div class="button">
                <a href="#part6">TORNAR</a>
                <div class="button-submit">
                    <input type="submit" name="enviar" value="SUBMIT" />
                </div>
            </div>
        </div>
    </form>
</div>
<script>
    <?php include __DIR__ . '/script.js'; ?>
</script>
