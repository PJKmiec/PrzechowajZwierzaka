<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="components/header.jsp"/>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">Zwierzakowy blog
    </h1>

    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">PrzechowajZwierzaka.pl</a></li>
        <li class="breadcrumb-item"><a href="/blog/all">Blog</a></li>
        <li class="breadcrumb-item active">${post.title}</li>
    </ol>

    <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

            <!-- Preview Image -->
            <img class="img-fluid rounded" src="/resources/img/${post.pic}" alt="${post.title}" alt="">

            <hr>

            <!-- Date/Time -->
            <p>Opublikowano: ${post.created}</p>

            <hr>

            <!-- Post Content -->
            <p class="lead">${fn:substringBefore(post.content, "***")}</p>

            <p>${fn:substringAfter(post.content, "***")}</p>

            <hr>

            <!-- Comments Form -->
            <div class="card my-4">
                <h5 class="card-header">Dodaj komentarz:</h5>
                <div class="card-body">

                    <form:form modelAttribute="comment" method="post" action="/comments/blog/${post.id}">
                        <div class="form-group">
                            <span class="form-error">${errorMessage}</span>
                            <form:textarea path="text" class="form-control" rows="3"/><br>
                            <form:errors path="text"/>
                        </div>
                        <button type="submit" class="btn btn-primary">Skomentuj &raquo;</button>
                    </form:form>

                </div>
            </div>

            <c:forEach items="${comments}" var="item">

                <!-- Comment -->
                <div class="media mb-4">
                    <img class="d-flex mr-3 rounded-circle" src="<c:choose>
                   <c:when test="${not empty item.user.pic}">/resources/img/${item.user.pic}</c:when>
                   <c:otherwise>http://placehold.it/50x50</c:otherwise>
                    </c:choose>" alt="" width="50" height="50">
                    <div class="media-body">
                        <div class="upper-toolbar">
                            <a data-toggle="collapse" href="#collapseExample${item.id}" role="button" aria-expanded="false" aria-controls="collapseExample">Odpowiedz</a>
                            <c:choose>
                                <c:when test="${item.status==0}">| <a
                                        href="/comments/flag/${item.id}">Zgłoś</a></c:when>
                                <c:when test="${item.status==1}">| Zgłoszono</c:when>
                            </c:choose>

                            <c:if test="${sessionScope.user.type == '2'}">
                                | <a href="/comments/delete/${item.id}">Usuń</a>
                            </c:if>
                        </div>
                        <h5 class="mt-0">${item.user.login}</h5>
                        <h6 class="small-date">- ${item.created} -</h6>
                            ${item.text}

                        <!-- Hidden reply form -->
                        <div class="collapse" id="collapseExample${item.id}">
                            <div class="card card-body">
                                <form:form modelAttribute="reply" method="post" action="/reply/${item.id}">
                                    <div class="form-group">
                                        <form:textarea path="text" class="form-control" rows="3"/><br>
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
                                    <img class="d-flex mr-3 rounded-circle" src="<c:choose>
                   <c:when test="${not empty r.user.pic}">/resources/img/${r.user.pic}</c:when>
                   <c:otherwise>http://placehold.it/50x50</c:otherwise>
                    </c:choose>" alt="" width="50" height="50">
                                    <div class="media-body">
                                        <div class="upper-toolbar">
                                            <a data-toggle="collapse" href="#collapseExample${r.id}" role="button" aria-expanded="false" aria-controls="collapseExample">Odpowiedz</a>
                                            <c:choose>
                                                <c:when test="${r.status==0}">| <a
                                                        href="/reply/flag/${r.id}">Zgłoś</a></c:when>
                                                <c:when test="${r.status==1}">| Zgłoszono</c:when>
                                            </c:choose>

                                            <c:if test="${sessionScope.user.type == '2'}">
                                                | <a href="/reply/delete/${r.id}">Usuń</a>
                                            </c:if>
                                        </div>

                                        <h5 class="mt-0">${r.user.login}</h5>
                                        <h6 class="small-date">- ${item.created} -</h6>
                                            ${r.text}

                                        <!-- Hidden reply form -->
                                        <div class="collapse" id="collapseExample${r.id}">
                                            <div class="card card-body">
                                                <form:form modelAttribute="reply" method="post" action="/reply/${item.id}">
                                                    <div class="form-group">
                                                        <form:textarea path="text" class="form-control" rows="3"/><br>
                                                        <form:errors path="text"/>
                                                    </div>
                                                    <button type="submit" class="btn btn-outline-primary">Odpowiedz &raquo;</button>
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

                <%--<tr>--%>
                <%--<td></td>--%>
                <%--<td></td>--%>
                <%--<td>${item.created}</td>--%>
                <%--<td>${item.status}</td>--%>
                <%--<td>--%>

                <%--</td>--%>
                <%--</tr>--%>

            </c:forEach>

        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

            <!-- Search Widget -->
            <div class="card mb-4">
                <h5 class="card-header">Szukaj</h5>
                <div class="card-body">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Słowa kluczowe">
                        <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">&raquo;</button>
                </span>
                    </div>
                </div>
            </div>

            <!-- Categories Widget -->
            <div class="card my-4">
                <h5 class="card-header">Tagi</h5>
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="#">Psy</a>
                                </li>
                                <li>
                                    <a href="#">Myszy</a>
                                </li>
                                <li>
                                    <a href="#">Rybki</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-unstyled mb-0">
                                <li>
                                    <a href="#">Koty</a>
                                </li>
                                <li>
                                    <a href="#">Chomiki</a>
                                </li>
                                <li>
                                    <a href="#">Pratchawce</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Side Widget -->
            <div class="card my-4">
                <h5 class="card-header">Boks na bajery</h5>
                <div class="card-body">
                    Tu będzie pełno bajerów!
                </div>
            </div>

        </div>

    </div>
    <!-- /.row -->


</div>
<!-- /.container -->


<jsp:include page="components/footer.jsp"/>
