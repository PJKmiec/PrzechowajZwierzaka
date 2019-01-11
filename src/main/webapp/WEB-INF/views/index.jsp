<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>PrzechowajZwierzaka.pl - znajdź opiekuna dla swojego ulubieńca!</title>

    <!-- Bootstrap core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/css/modern-business.css" rel="stylesheet">
    <link href="/resources/css/custom.css" rel="stylesheet">

</head>
<!-- Navigation -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="index.html"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="about.html">Znajdź opiekuna</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="services.html">Zaopiekuj się</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.html">Pytania i odpowiedzi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.html">Blog</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.html">Kontakt</a>
                </li>
                <!-- <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Blog
                  </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                    <a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a>
                    <a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
                    <a class="dropdown-item" href="blog-post.html">Blog Post</a>
                  </div>
                </li> -->
                <!-- <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Other Pages
                  </a>
                  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                    <a class="dropdown-item" href="full-width.html">Full Width Page</a>
                    <a class="dropdown-item" href="sidebar.html">Sidebar Page</a>
                    <a class="dropdown-item" href="faq.html">FAQ</a>
                    <a class="dropdown-item" href="404.html">404</a>
                    <a class="dropdown-item" href="pricing.html">Pricing Table</a>
                  </div>
                </li> -->
                <li class="nav-item">
                    <a class="nav-link" href="contact.html">Zaloguj się</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <!-- Slide One - Set the background image for this slide in the line below -->
            <div class="carousel-item active" style="background-image: url('/resources/img/pet7.jpg')">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Planujesz wyjazd?</h3>
                    <p>Znajdź miłośnika zwierząt który zaopiekuje się Twoim pupilem!</p>
                </div>
            </div>
            <!-- Slide Two - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('/resources/img/pet4.jpg')">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Zadbaj o swojego ulubieńca</h3>
                    <p>Z właściwym opiekunem on też może się cieszyć pełnią urlopu!</p>
                </div>
            </div>
            <!-- Slide Three - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('/resources/img/pet3.jpg')">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Zwierzę to nie bagaż</h3>
                    <p>Wiele zwierząt źle znosi podróże i zmiany otoczenia, za to łatwo nawiązuje przyjaźnie</p>
                </div>
            </div>
            <!-- Slide Four - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('/resources/img/pet2.jpg')">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Odpocznij na urlopie</h3>
                    <p>Transport zwierzaka i zapewnienie mu opieki poza domem bywa poważnym wyzwaniem</p>
                </div>
            </div>
            <!-- Slide Five - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('/resources/img/pet1.jpg')">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Wypocznij i pozwól wypocząć</h3>
                    <p>Odpocznij i wróć do swojego milusińskiego by na nowo odkrywać Waszą relację</p>
                </div>
            </div>
            <!-- Slide Six - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('/resources/img/pet11.jpg')">
                <div class="carousel-caption d-none d-md-block">
                    <h3>Małe i duże, z futrem i bez</h3>
                    <p>Każdy zasługuje na odpoczynek i na nowych przyjaciół</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</header>

<!-- Page Content -->
<div class="container">

    <h1 class="my-4">Witaj na PrzechowajZwierzaka.pl</h1>

    <!-- Marketing Icons Section -->
    <div class="row">
        <div class="col-lg-4 mb-4">
            <div class="card h-100">
                <h4 class="card-header">Card Title</h4>
                <div class="card-body">
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-primary">Learn More</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card h-100">
                <h4 class="card-header">Card Title</h4>
                <div class="card-body">
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis ipsam eos, nam perspiciatis natus commodi similique totam consectetur praesentium molestiae atque exercitationem ut consequuntur, sed eveniet, magni nostrum sint fuga.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-primary">Learn More</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card h-100">
                <h4 class="card-header">Card Title</h4>
                <div class="card-body">
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-primary">Learn More</a>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->

    <!-- Portfolio Section -->
    <h2>Portfolio Heading</h2>

    <div class="row">
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project One</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project Two</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project Three</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project Four</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project Five</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Project Six</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque earum nostrum suscipit ducimus nihil provident, perferendis rem illo, voluptate atque, sit eius in voluptates, nemo repellat fugiat excepturi! Nemo, esse.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->

    <!-- Features Section -->
    <div class="row">
        <div class="col-lg-6">
            <h2>Modern Business Features</h2>
            <p>The Modern Business template by Start Bootstrap includes:</p>
            <ul>
                <li>
                    <strong>Bootstrap v4</strong>
                </li>
                <li>jQuery</li>
                <li>Font Awesome</li>
                <li>Working contact form with validation</li>
                <li>Unstyled page elements for easy customization</li>
            </ul>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>
        </div>
        <div class="col-lg-6">
            <img class="img-fluid rounded" src="http://placehold.it/700x450" alt="">
        </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Call to Action Section -->
    <div class="row mb-4">
        <div class="col-md-8">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.</p>
        </div>
        <div class="col-md-4">
            <a class="btn btn-lg btn-secondary btn-block" href="#">Call to Action</a>
        </div>
    </div>

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; PrzechowajZwierzaka.pl 2019</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>