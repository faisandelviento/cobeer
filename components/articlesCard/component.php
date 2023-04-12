<style>
<?php include __DIR__ . '/template.css';
?>
</style>
<?php include __DIR__ . '/controller.php'; ?>

<div class="tituloArtDest">
    <h1>Darrers articles publicats</h1>
</div>
<div class="articlesCardContainer">
    <?php getArticulos() ?>
</div>