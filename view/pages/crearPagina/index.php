<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Crear Pagina</title>
	<script src="https://cdn.jsdelivr.net/npm/pace-js@latest/pace.min.js"></script>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="../../styles/layout.css" />
</head>

<body>
	<div class="layout">
		<header>
			<?php include __DIR__ . '/../../../components/header/component.php' ?>
		</header>
		<main>
			<div class="form">
				<div class="titleCreacioPagina">
					<h1>Creació página</h1>
					<h3>Disposición de articulo</h3>
				</div>
				<form action="#">
					<label for="titulo">Titulo</label>
					<input type="text" name="titulo">
					<label for="descripcion">Descripcion</label>
					<input type="text" name="descripcion">
					<label for="image">Image</label>
					<input type="file">
					<label for="tags">Tags</label>
					<select id="tagsSelect" name="tags">
						<option value="value1">Tag 1</option>
					</select>
					<input type="submit" value="Crear">
				</form>
			</div>
			<div class="preview">
				<div class="layout">
					<div class="header">
						<?php include __DIR__ . '/../../../components/header/component.php' ?>
					</div>
					<div class="main">

					</div>
					<div class="footer">
						<?php include __DIR__ . '/../../../components/footer/component.php' ?>
					</div>
				</div>
			</div>
		</main>
		<footer>
			<?php include __DIR__ . '/../../../components/footer/component.php' ?>
		</footer>
		<script src="script.js"></script>
</body>

</html>