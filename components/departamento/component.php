<?php include __DIR__ . '/controller.php'; ?>
<style>
    <?php include __DIR__ . '/template.css'; ?>
</style>

<!-- Este es componente departamento -->
<div class="container">
    <div class="tituloDepartamento">
        <h1>Hola</h1>
    </div>
    <div class="articuloDestacados">
        <h1>Articulos destacados</h1>
        <div>
            <?php include '../../components/articlesCard/component.php' ?>
        </div>
    </div>
</div>