<style>
    <?php include __DIR__ . '/template.css'; ?>
</style>

<input class="search" id="search">

<script>
    searchInput = document.getElementById("search");
    searchInput.addEventListener('keydown',launchSearch);

    function launchSearch(e){
        if (e.key == 'Enter'){
            tag = document.getElementById("search").value;
            window.location.href = `../buscador?tag=${tag}`;
        }
    }
</script>