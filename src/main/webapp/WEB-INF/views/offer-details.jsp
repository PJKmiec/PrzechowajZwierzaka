<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="components/header.jsp"/>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">${offer.pet_name}
        <small>od ${offer.user.login} (&starf;${offer.user.rating})</small>
    </h1>

    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">PrzechowajZwierzaka.pl</a></li>
        <li class="breadcrumb-item"><a href="/offer/pets">Oferty</a></li>
        <li class="breadcrumb-item active">${offer.pet_name}</li>
    </ol>

    <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

            <!-- Preview Image -->
            <img class="img-fluid rounded" src="/resources/img/${offer.pic}" alt="${offer.pet_name}" alt="">

            <hr>

            <div class="row">
                <div class="col-sm-2" style="line-height: 46px"><strong>Zwierzęta:</strong></div>
                <div class="col-sm-10">
                    <c:if test="${offer.cats gt 0}">
                        <div title="Koty (${offer.cats})" class="icon icon-cat"></div>
                    </c:if>
                    <c:if test="${offer.dogs gt 0}">
                        <div title="Psy (${offer.dogs})" class="icon icon-dog"></div>
                    </c:if>
                    <c:if test="${offer.birds gt 0}">
                        <div title="Ptaki (${offer.birds})" class="icon icon-bird"></div>
                    </c:if>
                    <c:if test="${offer.fish gt 0}">
                        <div title="Rybki (${offer.fish})" class="icon icon-fish"></div>
                    </c:if>
                    <c:if test="${offer.small_rodents gt 0}">
                        <div title="Małe gryzonie (${offer.small_rodents})"
                             class="icon icon-small-rodent"></div>
                    </c:if>
                    <c:if test="${offer.big_rodents gt 0}">
                        <div title="Duże gryzonie (${offer.big_rodents})" class="icon icon-big-rodent"></div>
                    </c:if>
                    <c:if test="${offer.reptiles gt 0}">
                        <div title="Gady / płazy (${offer.reptiles})" class="icon icon-reptile"></div>
                    </c:if>
                    <c:if test="${offer.bugs gt 0}">
                        <div title="Owady (${offer.bugs})" class="icon icon-bug"></div>
                    </c:if>
                    <c:if test="${offer.horses gt 0}">
                        <div title="Konie (${offer.horses})" class="icon icon-horse"></div>
                    </c:if>
                    <c:if test="${offer.misc gt 0}">
                        <div title="Inne (${offer.misc})" class="icon icon-misc"></div>
                    </c:if>
                </div>
            </div>

            <hr>

            <p>
                <strong>Cena:</strong> ${offer.price} PLN / dzień<br>
                <strong>Ważna:</strong> ${offer.starts} do ${offer.ends}
            </p>

            <hr>

            <div class="row">
                <div class="col-sm-2" style="line-height: 46px"><strong>Wymagania:</strong></div>
                <div class="col-sm-10">
                    <c:if test="${fn:contains(offer.requirements, 'f')}">
                        <div title="Karmienie" class="icon icon-feed"></div>
                    </c:if>
                    <c:if test="${fn:contains(offer.requirements, 'w')}">
                        <div title="Spacery" class="icon icon-walk"></div>
                    </c:if>
                    <c:if test="${fn:contains(offer.requirements, 'c')}">
                        <div title="Sprzątanie" class="icon icon-clean"></div>
                    </c:if>
                    <c:if test="${fn:contains(offer.requirements, 'g')}">
                        <div title="Pielęgnacja" class="icon icon-groom"></div>
                    </c:if>
                    <c:if test="${fn:contains(offer.requirements, 'm')}">
                        <div title="Podawanie leków" class="icon icon-medicate"></div>
                    </c:if>
                    <c:if test="${fn:contains(offer.requirements, 't')}">
                        <div title="Transport" class="icon icon-transport"></div>
                    </c:if>
                    <c:if test="${fn:contains(offer.requirements, 'e')}">
                        <div title="Monitorowanie zdrowia" class="icon icon-examine"></div>
                    </c:if>
                    <c:if test="${fn:contains(offer.requirements, 'v')}">
                        <div title="Wizyta u weterynarza" class="icon icon-vet"></div>
                    </c:if>
                    <c:if test="${fn:contains(offer.requirements, 'i')}">
                        <div title="Choruje" class="icon icon-ill"></div>
                    </c:if>
                </div>
            </div>

            <hr>

            <p>
                <strong>Zamieścił:</strong> <a href="user/see/${offer.user.id}">${offer.user.login}
                (&starf;${offer.user.rating})</a> dnia ${offer.created}<br>
                <strong>Miasto:</strong> ${offer.city}<br>
                <strong>Adres:</strong> ${offer.address}
            </p>

            <hr>

            <!-- Post Content -->
            <p><strong>Opis:</strong><br><br>${offer.description}</p>

            <hr>

            <a href="/offer/take/${offer.id}" class="btn btn-primary btn-lg">Zgłoś się &raquo;</a>

            <c:if test="${sessionScope.user.login!=null}">
                <!-- Comments Form -->
                <div class="card my-4">
                    <h5 class="card-header">Dodaj komentarz:</h5>
                    <div class="card-body">

                        <form:form modelAttribute="comment" method="post" action="/comments/offer/${offer.id}">
                            <div class="form-group">
                                <span class="form-error">${errorMessage}</span>
                                <form:textarea path="text" class="form-control" rows="3" maxlength="300"/><br>
                                <form:errors path="text"/>
                            </div>
                            <button type="submit" class="btn btn-primary">Skomentuj &raquo;</button>
                        </form:form>

                    </div>
                </div>
            </c:if>

            <c:forEach items="${comments}" var="item">

                <!-- Comment -->
                <div class="media mb-4">
                    <img class="d-flex mr-3 rounded-circle" src="/resources/img/${item.user.pic}" alt="" width="50"
                         height="50">
                    <div class="media-body">
                        <c:if test="${sessionScope.user.login!=null}">
                            <div class="upper-toolbar">
                                <a data-toggle="collapse" href="#collapseExample${item.id}" role="button"
                                   aria-expanded="false" aria-controls="collapseExample"
                                   class="icon icon-small icon-reply"
                                   title="Odpowiedz"></a>
                                <c:choose>
                                    <c:when test="${item.status==0}"><a
                                            href="/comments/flag/${item.id}" class="icon icon-small icon-report"
                                            title="Zgłoś"></a></c:when>
                                    <c:when test="${item.status==1}">
                                        <div class="icon icon-small icon-report icon-disabled" title="Zgłoszono"></div>
                                    </c:when>
                                </c:choose>

                                <c:if test="${sessionScope.user.type == '2'}">
                                    <a href="/comments/delete/${item.id}" class="icon icon-small icon-delete"
                                       title="Usuń"></a>
                                </c:if>
                            </div>
                        </c:if>
                        <h5 class="mt-0">${item.user.login}</h5>
                        <h6 class="small-date">- ${item.created} -</h6>
                            ${item.text}

                        <!-- Hidden reply form -->
                        <div class="collapse" id="collapseExample${item.id}">
                            <div class="card card-body">
                                <form:form modelAttribute="reply" method="post" action="/reply/${item.id}">
                                    <div class="form-group">
                                        <form:textarea path="text" class="form-control" rows="3" maxlength="300"/><br>
                                        <form:errors path="text"/>
                                    </div>
                                    <button type="submit" class="btn btn-outline-primary">Odpowiedz &raquo;</button>
                                </form:form>
                            </div>
                        </div>

                        <c:if test="${not empty item.replies}">
                            <c:forEach items="${item.replies}" var="r">

                                <!-- Reply -->
                                <hr>
                                <div class="media mt-4">
                                    <img class="d-flex mr-3 rounded-circle" src="/resources/img/${r.user.pic}" alt=""
                                         width="50" height="50">
                                    <div class="media-body">
                                        <c:if test="${sessionScope.user.login!=null}">
                                            <div class="upper-toolbar">
                                                <a data-toggle="collapse" href="#collapseExample${r.id}" role="button"
                                                   aria-expanded="false" aria-controls="collapseExample"
                                                   class="icon icon-small icon-reply" title="Odpowiedz"></a>
                                                <c:choose>
                                                    <c:when test="${r.status==0}"><a
                                                            href="/reply/flag/${r.id}"
                                                            class="icon icon-small icon-report"
                                                            title="Zgłoś"></a></c:when>
                                                    <c:when test="${r.status==1}">
                                                        <div class="icon icon-small icon-report icon-disabled"
                                                             title="Zgłoszono"></div>
                                                    </c:when>
                                                </c:choose>

                                                <c:if test="${sessionScope.user.type == '2'}">
                                                    <a href="/reply/delete/${r.id}" class="icon-small icon icon-delete"
                                                       title="Usuń"></a>
                                                </c:if>
                                            </div>
                                        </c:if>

                                        <h5 class="mt-0">${r.user.login}</h5>
                                        <h6 class="small-date">- ${item.created} -</h6>
                                            ${r.text}

                                        <!-- Hidden reply form -->
                                        <div class="collapse" id="collapseExample${r.id}">
                                            <div class="card card-body">
                                                <form:form modelAttribute="reply" method="post"
                                                           action="/reply/${item.id}">
                                                    <div class="form-group">
                                                        <form:textarea path="text" class="form-control" rows="3"/><br>
                                                        <form:errors path="text"/>
                                                    </div>
                                                    <button type="submit" class="btn btn-outline-primary">Odpowiedz
                                                        &raquo;
                                                    </button>
                                                </form:form>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </c:forEach>
                        </c:if>

                    </div>
                </div>
                <hr>

            </c:forEach>

        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

            <!-- Search Widget -->
            <div class="card mb-4">
                <h5 class="card-header">Szukaj ofert według miasta</h5>
                <div class="card-body">
                    <form action="/offer/city" method="post">
                        <div class="input-group">
                            <input type="text" name="city" class="form-control" placeholder="Nazwa miasta">
                            <span class="input-group-btn">
                  <button class="btn btn-secondary" type="submit">&raquo;</button>
                </span>
                        </div>
                    </form>

                </div>
            </div>

            <!-- Categories Widget -->
            <div class="card my-4">
                <h5 class="card-header">Szukaj ofert według zwierząt</h5>
                <div class="card-body">
                    <div class="row">
                        <a href="/offer/a/cats" class="icon icon-cat" title="Koty"></a>
                        <a href="/offer/a/dogs" class="icon icon-dog" title="Psy"></a>
                        <a href="/offer/a/birds" class="icon icon-bird" title="Ptaki"></a>
                        <a href="/offer/a/fish" class="icon icon-fish" title="Rybki"></a>
                        <a href="/offer/a/small_rodents" class="icon icon-small-rodent" title="Małe gryzonie"></a>
                        <a href="/offer/a/big_rodents" class="icon icon-big-rodent" title="Duże gryzonie"></a>
                        <a href="/offer/a/reptiles" class="icon icon-reptile" title="Gady/płazy"></a>
                        <a href="/offer/a/bugs" class="icon icon-bug" title="Owady"></a>
                        <a href="/offer/a/horses" class="icon icon-horse" title="Konie"></a>
                        <a href="/offer/a/misc" class="icon icon-misc" title="Inne"></a>
                    </div>
                </div>
            </div>

            <!-- Side Widget -->
            <div class="card my-4">
                <h5 class="card-header">Szukaj ofert po dacie</h5>
                <div class="card-body">
                    Tu będzie kalendarz :)
                </div>
            </div>

        </div>

    </div>
    <!-- /.row -->


</div>
<!-- /.container -->


<jsp:include page="components/footer.jsp"/>
