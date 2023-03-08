<style>
  <?php include __DIR__ . '/template.css'; ?>
</style>

<article class="post">

  <section class="awSlider">
  <div id="carousel" class="carousel">
    <button class="arrow prev">⇦</button>
    <div class="gallery">
      <ul>
        <li><img src="https://en.js.cx/carousel/1.png"></li>
        <li><img src="https://en.js.cx/carousel/2.png"></li>
        <li><img src="https://en.js.cx/carousel/3.png"></li>
        <li><img src="https://en.js.cx/carousel/4.png"></li>
        <li><img src="https://en.js.cx/carousel/5.png"></li>
        <li><img src="https://en.js.cx/carousel/6.png"></li>
        <li><img src="https://en.js.cx/carousel/7.png"></li>
        <li><img src="https://en.js.cx/carousel/8.png"></li>
        <li><img src="https://en.js.cx/carousel/9.png"></li>
        <li><img src="https://en.js.cx/carousel/10.png"></li>
      </ul>
    </div>
    <button class="arrow next">⇨</button>
  </div>
  </section>

  <div class="post__container">
    <span class="post__category">Departamento</span>

    <div class="post__content">
      <header>
        <time class="post__time">Agosto 22 2023</time>
        <h1 class="post__header"><span>Shift the overall look </span> <span>and feel by adding these</span> <span>wonderful
            touches to furniture in your home</span></h1>
      </header>

      <p class="post__text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean a augue justo. In mollis erat in elit tempus, feugiat luctus ex sollicitudin. Maecenas euismod tortor dolor, vel blandit augue aliquam sit amet. Vestibulum et eros mollis, laoreet nisi ac, condimentum sapien. Aliquam nec nunc enim.
        Lorem ipsum dolor sit amet consectetur, Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eius, sed. Similique explicabo recusandae dolorum molestias blanditiis harum cupiditate repellendus quisquam, modi commodi incidunt facilis voluptatum totam accusantium ipsa eius quod tempore aspernatur suscipit nam, natus sint. Quis, temporibus, adipisci reiciendis quaerat magni rerum ab doloremque iure ducimus provident tempora omnis fugit, nobis incidunt. Nisi corporis repudiandae dolor cumque fugiat optio expedita doloribus nemo temporibus porro, minima reiciendis perferendis tempore tenetur eveniet neque. Odit vero facilis similique exercitationem unde dolorum, tempora sint inventore laborum doloribus voluptate numquam nostrum quis vitae eius fugit modi eos minima quasi minus quibusdam? Quisquam vero, quis, laboriosam nulla facere amet animi obcaecati repellat natus magni voluptatum. Atque, tempore excepturi sit vero qui dolores architecto libero vel distinctio voluptatibus illo, nostrum sequi error ut dignissimos laudantium ex quos pariatur deserunt nemo praesentium veniam, inventore eos. Excepturi at unde ullam optio deleniti pariatur harum quo odit quidem dolorum! adipisicing elit. Rem, dolore voluptatem ad totam tempore soluta veniam nulla repellendus exercitationem commodi consectetur nemo tenetur numquam libero. Eligendi tenetur id eveniet officiis eius in iusto. Necessitatibus itaque dicta totam excepturi tempora aliquid in facere magni atque impedit hic perspiciatis labore, magnam libero? Earum nulla odio sed quis. Nesciunt reprehenderit laborum quaerat vitae. Iste sit consequatur, explicabo sint iure architecto enim ad, delectus necessitatibus non voluptate laborum ut saepe harum error accusantium quia est esse facilis. Aut beatae dolore, cumque praesentium neque voluptate repellendus quo adipisci laborum sapiente possimus ea porro ab reiciendis!
      </p>

      <div class="user flex p-1">

        <div class="avatar"></div>
        <div class="user-detail">
          <h2 class="name">Yassine Kerzazi</h2>
        </div>
      </div>
    </div>
  </div>
</article>

<script>
      /* etiqueta las imágenes pra poder rastrearlas, solo por conveniencia */
      let i = 1;
    for(let li of carousel.querySelectorAll('li')) {
      li.style.position = 'relative';
      li.insertAdjacentHTML('beforeend', `<span style="position:absolute;left:0;top:0">${i}</span>`);
      i++;
    }

    /* configuración */
    let width = 130; // ancho de las imágenes
    let count = 3; // conteo de las imágenes visibles

    let list = carousel.querySelector('ul');
    let listElems = carousel.querySelectorAll('li');

    let position = 0; // posición del desplazamiento del carrete

    carousel.querySelector('.prev').onclick = function() {
      // desplazamiento izquierdo
      position += width * count;
      // no podemos mover demasiado a la izquierda, se acaban las imágenes
      position = Math.min(position, 0)
      list.style.marginLeft = position + 'px';
    };

    carousel.querySelector('.next').onclick = function() {
      // desplazamiento derecho
      position -= width * count;
      // solo se puede desplazar el carrete de imágenes (longitud total de la cinta - conteo visibles)
      position = Math.max(position, -width * (listElems.length - count));
      list.style.marginLeft = position + 'px';
    };
</script>