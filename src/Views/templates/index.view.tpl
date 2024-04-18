
    <header class="hero-banner">
        <div class="hero-content">
            <h1>Bienvenido a KevsTrx</h1>
            <p>Descubre todo lo que tenemos para ofrecerte</p>
            <a href="#about-us" class="btn">Sobre nosotros</a>
        </div>
    </header>
<section data-aos="zoom-out-down" id="about-us" class="about-section" >
<img class="index_img" src="public/imgs/logo/logo.jpeg">
    <article class="container">
        <h2>Acerca de nuestra tienda de discos</h2>
        <p>Somos una tienda dedicada a ofrecer una amplia selección de discos musicales de diversos géneros y épocas. Desde vinilos clásicos hasta los últimos lanzamientos en CD, estamos comprometidos con brindar a nuestros clientes una experiencia única en la compra de música.</p>
        <p>Nuestra pasión por la música nos impulsa a buscar constantemente nuevos títulos y ediciones especiales para agregar a nuestro catálogo. Nos esforzamos por ofrecer productos de alta calidad y un servicio excepcional para satisfacer las necesidades de los amantes de la música.</p>
        <p>Con un equipo apasionado y conocedor, estamos aquí para ayudarte a encontrar ese disco especial que estás buscando o para descubrirte nuevos artistas y álbumes que puedan inspirarte. ¡Únete a nuestra comunidad de amantes de la música y encuentra tu próximo tesoro musical con nosotros!</p>
    </article>
</section>

<style>

header{
  margin:0; 
  padding:1rem; 
}
/* Estilos para el hero banner */
.hero-banner {
    background-image: url('public/imgs/hero/hero.png'); 
    background-size: cover;
    background-position: center;
    height: 100vh;
    opacity:80%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #fff;
    text-align: center;
}

.hero-content {
    max-width: 800px;
}

.hero-content h1 {
    font-size: 3em;
    margin-bottom: 20px;
}

.hero-content p {
    font-size: 1.2em;
    margin-bottom: 30px;
}

.btn {
    display: inline-block;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    background-color:#ffffff; 
    transition: background-color 0.3s;
}

.btn:hover {
    background-color: #cc5500;
}
.index_img{
  max-width: 300px; 
  width: 300px; 
  margin: auto; 
  height: auto; 
  border-radius: 30%; 
}

@media only screen and (max-width: 600px) {
     .about-section{
     flex-direction: column;
    }
    .index_img{
      display: none; 
    }
  
}

@media only screen and (min-width: 601px) and (max-width: 1024px) {
    .about-section{
     flex-direction: column;
    }

}

@media only screen and (min-width: 1025px) {
  /**/
}

/* Estilos para la sección "Acerca de nosotros" */
.about-section {
    padding: 50px 0;
    display: flex; 
    flex-direction: row; 
    margin: 0 auto; 
   
}

.container {
    max-width: 800px;
    margin: 0 1rem;
    text-align: center;
}

.about-section h2 {
    margin-bottom: 20px;
}

.about-section p {
    font-size: 1.1em;
    line-height: 1.6;
}

</style>
