<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reviews</title>
</head>
<body>
<h1>Reviews:</h1>

<table border="1" cellpadding="5">
    <thead>
    <th>ID:</th>
    <th>Ocena:</th>
    <th>Gatunek zwierzaka:</th>
    <th>Opis:</th>
    <th>Dodana:</th>
    <th>Autor oferty:</th>
    <th>Autor recenzji:</th>
    <th>Rodzaj:</th>
    <th>Wymagania:</th>
    <th>Akcje:</th>
    </thead>
    <tbody>
    <c:forEach items="${reviews}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.rating}</td>
            <td>${item.animal_type}</td>
            <td>${item.description}</td>
            <td>${item.created}</td>
            <td>${item.user.login}</td>
            <td>${item.author.login}</td>
            <td>
                <c:choose>
                    <c:when test="${item.type=='o'}">Recenzja właściciela</c:when>
                    <c:when test="${item.type=='s'}">Recenzja opiekuna</c:when>
                </c:choose>
            </td>
            <td>
                <c:if test = "${fn:contains(item.requirements, 'f')}">karmienie</c:if>
                <c:if test = "${fn:contains(item.requirements, 'w')}">spacery</c:if>
                <c:if test = "${fn:contains(item.requirements, 'c')}">sprzątanie</c:if>
                <c:if test = "${fn:contains(item.requirements, 'g')}">pielęgnacja</c:if>
                <c:if test = "${fn:contains(item.requirements, 'm')}">podawanie leków</c:if>
                <c:if test = "${fn:contains(item.requirements, 't')}">transport</c:if>
                <c:if test = "${fn:contains(item.requirements, 'e')}">badanie</c:if>
                <c:if test = "${fn:contains(item.requirements, 'v')}">weterynarz</c:if>
                <c:if test = "${fn:contains(item.requirements, 'i')}">choruje</c:if>
            </td>
            <td>
                <a href="/comment/review/${item.id}">Skomentuj</a>
                <a href="edit/${item.id}">Edytuj</a>
                <a href="delete/${item.id}">Usuń</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
