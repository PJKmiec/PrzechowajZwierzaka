<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="components/header.jsp"/>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">Zwierzakowy blog
    </h1>

    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="/">PrzechowajZwierzaka.pl</a>
        </li>
        <li class="breadcrumb-item active">Blog</li>
    </ol>

    <c:forEach items="${posts}" var="item">

        <!-- Blog Post -->
        <div class="card mb-4">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-6">
                        <a href="/blog/see/${item.id}">
                            <img class="img-fluid rounded" src="/resources/img/${item.pic}" alt="${item.title}">
                        </a>
                    </div>
                    <div class="col-lg-6">
                        <h2 class="card-title">${item.title}</h2>
                        <p class="card-text">${fn:substringBefore(item.content, "***")}...</p>
                        <a href="/blog/see/${item.id}" class="btn btn-primary">Czytaj całość &raquo;</a>
                    </div>
                </div>
            </div>
            <div class="card-footer text-muted">Opublikowano: ${item.created}

                <c:if test = "${sessionScope.user.type == '2'}">
                    | <a href="edit/${item.id}">Edytuj</a>
                    | <a href="delete/${item.id}">Usuń</a>
                </c:if>

            </div>
        </div>

    </c:forEach>

    <!-- Pagination -->
    <ul class="pagination justify-content-center mb-4">
        <li class="page-item">
            <a class="page-link" href="#">&laquo; Starsze wpisy</a>
        </li>
        <li class="page-item disabled">
            <a class="page-link" href="#">Nowsze wpisy &raquo;</a>
        </li>
    </ul>

</div>

</div>
<!-- /.container -->


<jsp:include page="components/footer.jsp"/>
