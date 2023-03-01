<style>
    <?php include __DIR__ . '/template.css'; ?>
</style>
<div id="bodyArrastrar">
    <div id="areaArrastre">
        <h2 id="tituloArrastrar">Arrastrar imagenes</h2>
        <span>o</span>
        <div id="buttonArrastrar">Selecciona tus archivos</div>
        <input type="file" name="" id="inputImagen" hidden multiple />
    </div>
    <div id="viewArrastre"></div>
    <div id="viewCarpeta"></div>
</div>

<script>
    <?php include __DIR__ . '/script.js'; ?>
</script>