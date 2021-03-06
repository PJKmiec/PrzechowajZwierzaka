<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel='icon' href='/resources/img/favicon.ico' type='image/x-icon' sizes="16x16" />

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
        <a class="navbar-brand" href="/"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item <c:if test="${fn:contains(requestScope['javax.servlet.forward.request_uri'], 'sitters')}"> active</c:if>">
                    <a class="nav-link" href="/offer/sitters">Znajdź opiekuna</a>
                </li>
                <li class="nav-item<c:if test="${fn:contains(requestScope['javax.servlet.forward.request_uri'], 'pets')}"> active</c:if>">
                    <a class="nav-link" href="/offer/pets">Zaopiekuj się</a>
                </li>
                <li class="nav-item<c:if test="${fn:contains(pageContext.request.requestURI, 'faq')}"> active</c:if>">
                    <a class="nav-link" href="/pytania-i-odpowiedzi">Pytania i odpowiedzi</a>
                </li>
                <li class="nav-item<c:if test="${fn:contains(pageContext.request.requestURI, 'blog')}"> active</c:if>">
                    <a class="nav-link" href="/blog/all">Blog</a>
                </li>
                <li class="nav-item<c:if test="${fn:contains(pageContext.request.requestURI, 'contact')}"> active</c:if>">
                    <a class="nav-link" href="/kontakt">Kontakt</a>
                </li>
                <c:choose>
                    <c:when test="${sessionScope.user.login!=null}">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">Twój profil</a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
                                <span class="dropdown-item">${sessionScope.user.login}</span>

                                <c:if test="${sessionScope.user.type == '2'}">
                                    <a class="dropdown-item" href="/admin">Panel administracyjny</a>
                                </c:if>

                                <a class="dropdown-item" href="/user/edit/${sessionScope.user.id}">Edytuj profil</a>
                                <a class="dropdown-item" href="/user/logout">Wyloguj się</a>
                            </div>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item<c:if test="${fn:contains(pageContext.request.requestURI, 'login')}"> active</c:if>">
                            <a class="nav-link" href="/user/login">Zaloguj się</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</nav>