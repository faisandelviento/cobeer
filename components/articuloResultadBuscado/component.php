<style>
<?php include __DIR__ . '/template.css';
?>
</style>
<?php include __DIR__ . '/controller.php'; ?>

<div class="tituloArtDest">
      <?php echo "<h1>Articles amb la paraula clau: '".$_GET["tag"]."'</h1>"; ?>
</div>
<div class="articlesCardContainer">
      <?php getArticulosTagged($_GET["tag"]); ?>
</div>