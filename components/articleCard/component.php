<style>
    <?php include __DIR__ . '/template.css';
    ?>
</style>
<?php include __DIR__ . '/controller.php'; ?>

<div class="defaultCardContainer">
    <div class="defaultCardImage">
    </div>

    <div class="defaultCardText">
        <div class="defaultCardTitle">
            <h1>
                <?= $articulo['titulo']; ?>

            </h1>
        </div>
        <div class="defaultCardDescription">
            <p>
                <?= $articulo['descripcion']; ?>
            </p>
        </div>
    </div>
</div>