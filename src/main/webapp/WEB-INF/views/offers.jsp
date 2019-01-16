<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Offers</title>
</head>
<body>
<h1>Offers:</h1>

<table border="1" cellpadding="5">
    <thead>
    <th>ID:</th>
    <th>Imię zwierzaka:</th>
    <th>Złożył:</th>
    <th>Przyjął:</th>
    <th>Utworzona:</th>
    <th>Początek:</th>
    <th>Koniec:</th>
    <th>Cena:</th>
    <th>Miasto:</th>
    <th>Adres:</th>
    <th>Telefon:</th>
    <th>Email:</th>
    <th>Wymagania:</th>
    <th>Akcje:</th>
    </thead>
    <tbody>
    <c:forEach items="${offers}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.pet_name}</td>
            <td>${item.user.login}</td>
            <td>${item.claimant.login}</td>
            <td>${item.created}</td>
            <td>${item.starts}</td>
            <td>${item.ends}</td>
            <td>${item.price}</td>
            <td>${item.city}</td>
            <td>${item.address}</td>
            <td>${item.phone}</td>
            <td>${item.email}</td>
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
                <a href="/comments/offer/${item.id}">Komentarze</a>
                <a href="/review/add/${item.id}">Zrecenzuj</a>
                <a href="edit/${item.id}">Edytuj</a>
                <a href="delete/${item.id}">Usuń</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
