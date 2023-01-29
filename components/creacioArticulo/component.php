<style> <?php include __DIR__.'/template.css'; ?> </style>
<div class="crearArticulo">
    <div class="foto">
        <form">
            <input type="file" id="myFile" name="imgCrearArticulo">
            <input type="submit">
        </form>
        <img src=«mifoto.php» />
    </div>
    <div class="texto">
        <form">
            Titulo del artículo: <input type="text" name="tituloArti"><br>
            <textarea id="noticia" name="noticia" rows="20" cols="50"></textarea>
            <br>
            Tag al que asociar: <input type="text" name="nombreTag"><br>
            <input type="submit" value="Guardar">
        </for,>
    </div>
</div>
