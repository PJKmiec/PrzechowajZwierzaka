<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="components/header.jsp"/>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3"><c:choose>
        <c:when test="${fn:contains(requestScope['javax.servlet.forward.request_uri'], 'sitters')}">Znajdź opiekuna</c:when>
        <c:otherwise>Zaopiekuj się</c:otherwise>
    </c:choose>
        <small>Oferty</small>
    </h1>

    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="/">PrzechowajZwierzaka.pl</a>
        </li>
        <li class="breadcrumb-item active"><c:choose>
            <c:when test="${fn:contains(requestScope['javax.servlet.forward.request_uri'], 'sitters')}">Oferty dla właścicieli</c:when>
            <c:otherwise>Oferty dla opiekunów</c:otherwise>
        </c:choose></li>
    </ol>

    <div class="row">

        <c:forEach items="${offers}" var="item">

            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <a href="/offer/see/${item.id}"><img class="card-img-top" src="<c:choose>
                   <c:when test="${not empty item.pic}">/resources/img/${item.pic}</c:when>
                   <c:otherwise>http://placehold.it/700x400</c:otherwise>
                    </c:choose>" alt="">
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="/offer/see/${item.id}">${item.pet_name}</a>
                            </h4>
                            <p class="card-subtitle">Cena: <strong>${item.price} PLN</strong></p>
                            <p class="card-subtitle">Miasto: ${item.city}</p>

                            <p class="card-text">
                                Od: ${fn:substringBefore(item.starts, ' ')} do: ${fn:substringBefore(item.ends, ' ')}
                            </p>

                            <div class="card-text">Zwierzęta:<br>
                                <c:if test="${item.cats gt 0}">
                                    <div title="Koty (${item.cats})" class="icon icon-cat"></div>
                                </c:if>
                                <c:if test="${item.dogs gt 0}">
                                    <div title="Psy (${item.dogs})" class="icon icon-dog"></div>
                                </c:if>
                                <c:if test="${item.birds gt 0}">
                                    <div title="Ptaki (${item.birds})" class="icon icon-bird"></div>
                                </c:if>
                                <c:if test="${item.fish gt 0}">
                                    <div title="Rybki (${item.fish})" class="icon icon-fish"></div>
                                </c:if>
                                <c:if test="${item.small_rodents gt 0}">
                                    <div title="Małe gryzonie (${item.small_rodents})" class="icon icon-small-rodent"></div>
                                </c:if>
                                <c:if test="${item.big_rodents gt 0}">
                                    <div title="Duże gryzonie (${item.big_rodents})" class="icon icon-big-rodent"></div>
                                </c:if>
                                <c:if test="${item.reptiles gt 0}">
                                    <div title="Gady / płazy (${item.reptiles})" class="icon icon-reptile"></div>
                                </c:if>
                                <c:if test="${item.bugs gt 0}">
                                    <div title="Owady (${item.bugs})" class="icon icon-bug"></div>
                                </c:if>
                                <c:if test="${item.horses gt 0}">
                                    <div title="Konie (${item.horses})" class="icon icon-horse"></div>
                                </c:if>
                                <c:if test="${item.misc gt 0}">
                                    <div title="Inne (${item.misc})" class="icon icon-misc"></div>
                                </c:if>

                            </div>

                            <div class="clearfix"></div><br>

                            <div class="card-text">Wymagania:<br>
                                <c:if test="${fn:contains(item.requirements, 'f')}">
                                    <div title="Karmienie" class="icon icon-feed"></div>
                                </c:if>
                                <c:if test="${fn:contains(item.requirements, 'w')}">
                                    <div title="Spacery" class="icon icon-walk"></div>
                                </c:if>
                                <c:if test="${fn:contains(item.requirements, 'c')}">
                                    <div title="Sprzątanie" class="icon icon-clean"></div>
                                </c:if>
                                <c:if test="${fn:contains(item.requirements, 'g')}">
                                    <div title="Pielęgnacja" class="icon icon-groom"></div>
                                </c:if>
                                <c:if test="${fn:contains(item.requirements, 'm')}">
                                    <div title="Podawanie leków" class="icon icon-medicate"></div>
                                </c:if>
                                <c:if test="${fn:contains(item.requirements, 't')}">
                                    <div title="Transport" class="icon icon-transport"></div>
                                </c:if>
                                <c:if test="${fn:contains(item.requirements, 'e')}">
                                    <div title="Monitorowanie zdrowia" class="icon icon-examine"></div>
                                </c:if>
                                <c:if test="${fn:contains(item.requirements, 'v')}">
                                    <div title="Wizyta u weterynarza" class="icon icon-vet"></div>
                                </c:if>
                                <c:if test="${fn:contains(item.requirements, 'i')}">
                                    <div title="Choruje" class="icon icon-ill"></div>
                                </c:if>
                            </div>

                            <div class="clearfix"></div><br>

                            <div class="clearfix"></div><br>

                            <c:if test="${sessionScope.user.type == '2'}">
                                <a href="/offer/edit/${item.id}">Edytuj</a>
                                | <a href="/offer/delete/${item.id}">Usuń</a>
                            </c:if>

                        </div>
                        <div class="card-footer">
                            <a href="/offer/see/${item.id}" class="btn btn-primary">Szczegóły &raquo;</a>
                        </div>
                </div>
            </div>

            <%--<tr>--%>
            <%--<td>${item.id}</td>--%>
            <%--<td>${item.pet_name}</td>--%>
            <%--<td>${item.user.login}</td>--%>
            <%--<td>${item.claimant.login}</td>--%>
            <%--<td>${item.created}</td>--%>
            <%--<td>${item.starts}</td>--%>
            <%--<td>${item.ends}</td>--%>
            <%--<td>${item.price}</td>--%>
            <%--<td>${item.city}</td>--%>
            <%--<td>${item.address}</td>--%>
            <%--<td>${item.phone}</td>--%>
            <%--<td>${item.email}</td>--%>
            <%--<td>--%>

            <%--</td>--%>
            <%--<td>--%>
            <%--<a href="/comments/offer/${item.id}">Komentarze</a>--%>
            <%--<a href="/review/add/${item.id}">Zrecenzuj</a>--%>
            <%--</td>--%>
            <%--</tr>--%>
        </c:forEach>

    </div>

    <!-- Pagination -->
    <ul class="pagination justify-content-center">
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
                <span class="sr-only">Previous</span>
            </a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">1</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">2</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#">3</a>
        </li>
        <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
                <span class="sr-only">Next</span>
            </a>
        </li>
    </ul>

</div>
<!-- /.container -->


<jsp:include page="components/footer.jsp"/>
