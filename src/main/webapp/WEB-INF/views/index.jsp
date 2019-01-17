<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="components/header.jsp"/>

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
                <div class="carousel-gradient"></div>
                <div class="carousel-caption d-none d-md-block">
                    <h3>Planujesz wyjazd?</h3>
                    <p>Znajdź miłośnika zwierząt który zaopiekuje się Twoim pupilem!</p>
                </div>
            </div>
            <!-- Slide Two - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('/resources/img/pet4.jpg')">
                <div class="carousel-gradient"></div>
                <div class="carousel-caption d-none d-md-block">
                    <h3>Zadbaj o swojego ulubieńca</h3>
                    <p>Z właściwym opiekunem on też może się cieszyć pełnią urlopu!</p>
                </div>
            </div>
            <!-- Slide Three - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('/resources/img/pet3.jpg')">
                <div class="carousel-gradient"></div>
                <div class="carousel-caption d-none d-md-block">
                    <h3>Zwierzę to nie bagaż</h3>
                    <p>Wiele zwierząt źle znosi podróże i zmiany otoczenia, za to łatwo nawiązuje przyjaźnie</p>
                </div>
            </div>
            <!-- Slide Four - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('/resources/img/pet2.jpg')">
                <div class="carousel-gradient"></div>
                <div class="carousel-caption d-none d-md-block">
                    <h3>Odpocznij na urlopie</h3>
                    <p>Transport zwierzaka i zapewnienie mu opieki poza domem to poważne wyzwanie</p>
                </div>
            </div>
            <!-- Slide Five - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('/resources/img/pet1.jpg')">
                <div class="carousel-gradient"></div>
                <div class="carousel-caption d-none d-md-block">
                    <h3>Wypoczęci i stęsknieni</h3>
                    <p>Właśnie tacy będziecie Ty i Twój pupil na koniec urlopu</p>
                </div>
            </div>
            <!-- Slide Six - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('/resources/img/pet11.jpg')">
                <div class="carousel-gradient"></div>
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
    <div class="carousel-grade-left"></div>
    <div class="carousel-grade-right"></div>
</header>

<!-- Page Content -->
<div class="container">

    <h1 class="my-4">Witaj na PrzechowajZwierzaka.pl</h1>

    <!-- Marketing Icons Section -->
    <div class="row">
        <div class="col-lg-4 mb-4">
            <div class="card h-100">
                <h4 class="card-header">Znajdź opiekuna</h4>
                <a href="/znajdz-opiekuna"><img class="card-img-top" src="/resources/img/owner.jpg" alt=""></a>

                <div class="card-body">
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse
                        necessitatibus neque.</p>
                </div>
                <div class="card-footer">
                    <a href="/znajdz-opiekuna" class="btn btn-primary">Więcej</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card h-100">
                <h4 class="card-header">Zostań opiekunem</h4>
                <a href="#"><img class="card-img-top" src="/resources/img/sitter.jpg" alt=""></a>
                <div class="card-body">
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis ipsam eos,
                        nam perspiciatis natus commodi similique totam consectetur praesentium molestiae atque
                        exercitationem ut consequuntur, sed eveniet, magni nostrum sint fuga.</p>
                </div>
                <div class="card-footer">
                    <a href="/zostan-opiekunem" class="btn btn-primary">Więcej</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 mb-4">
            <div class="card h-100">
                <h4 class="card-header">Menu deweloperskie</h4>
                <div class="card-body">
                    <p class="card-text">
                    <ul><b>Użytkownik:</b>
                        <li><a href="user/register">Dodawanie użytkownika</a></li>
                        <li><a href="user/edit">Edycja / usuwanie użytkowników</a></li>
                    </ul>
                    <c:if test = "${sessionScope.user.type == '2'}">
                        <ul><b>Oferta:</b>
                            <li><a href="offer/add">Dodawanie oferty</a></li>
                            <li><a href="offer/edit">Edycja / usuwanie oferty</a></li>
                        </ul>
                        <ul><b>Recenzja:</b>
                            <li><a href="review/edit">Edycja / usuwanie recenzji</a></li>
                        </ul>
                        <ul><b>Blog:</b>
                            <li><a href="blog/add">Dodawanie bloga</a></li>
                            <li><a href="blog/all">Edycja / usuwanie bloga</a></li>
                        </ul>
                    </c:if>

                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Portfolio Section -->
    <h2>Szukają opiekuna</h2>

    <div class="row">
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="/resources/img/ani1.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Śmigacz</a>
                    </h4>
                    <p class="card-text">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam
                        aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt,
                        dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-primary">Więcej</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="/resources/img/ani2.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Kapciojad</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod
                        odio, gravida pellentesque urna varius vitae.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-primary">Więcej</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="/resources/img/ani3.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Jackie</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error
                        quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure
                        perspiciatis mollitia recusandae vero vel quam!</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-primary">Więcej</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="/resources/img/ani4.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Zjadacz Ludzi</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod
                        odio, gravida pellentesque urna varius vitae.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-primary">Więcej</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="/resources/img/ani5.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Rozpruwacz</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod
                        odio, gravida pellentesque urna varius vitae.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-primary">Więcej</a>
                </div>
            </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <a href="#"><img class="card-img-top" src="/resources/img/ani6.jpg" alt=""></a>
                <div class="card-body">
                    <h4 class="card-title">
                        <a href="#">Puszek</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque earum nostrum
                        suscipit ducimus nihil provident, perferendis rem illo, voluptate atque, sit eius in voluptates,
                        nemo repellat fugiat excepturi! Nemo, esse.</p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-primary">Więcej</a>
                </div>
            </div>
        </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Features Section -->
    <div class="row">
        <div class="col-lg-6">
            <h2>Zostań opiekunem</h2>
            <p>Zarabiaj na swojej miłości do zwierząt:</p>
            <ul>
                <li>
                    <strong>$$$</strong>
                </li>
                <li>nowe przyjaźnie</li>
                <li>jeszcze jakieś zalety</li>
            </ul>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id
                reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia
                dolorum ducimus unde.</p>
        </div>
        <div class="col-lg-6">
            <img class="img-fluid rounded" src="/resources/img/petsitter.jpg" alt="">
        </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Call to Action Section -->
    <div class="row mb-4">
        <div class="col-md-8">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti
                beatae veniam harum neque nemo praesentium cum alias asperiores commodi.</p>
        </div>
        <div class="col-md-4">
            <a class="btn btn-lg btn-primary btn-block" href="#">Dołącz do nas już teraz</a>
        </div>
    </div>

</div>
<!-- /.container -->

<jsp:include page="components/footer.jsp"/>
