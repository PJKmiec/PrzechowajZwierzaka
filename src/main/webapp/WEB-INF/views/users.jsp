<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
<h1>Users:</h1>

<table border="1" cellpadding="5">
    <thead>
    <th>ID:</th>
    <th>Login:</th>
    <th>Email:</th>
    <th>Miasto:</th>
    <th>Utworzony:</th>
    <th>Ostatnio zalogowany:</th>
    <th>Adres:</th>
    <th>Rating:</th>
    <th>Typ:</th>
    <th>Akcje:</th>
    </thead>
    <tbody>
    <c:forEach items="${users}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.login}</td>
            <td>${item.email}</td>
            <td>${item.city}</td>
            <td><c:set var="created" value="${item.created}" />
                    ${fn:substringBefore(created, ".")}
            </td>
            <td>${item.last_login}</td>
            <td>${item.address}</td>
            <td>${item.rating}</td>
            <td>
                <c:choose>
                    <c:when test="${item.type=='1'}">Użytkownik</c:when>
                    <c:when test="${item.type=='2'}">Admin</c:when>
                </c:choose>
            </td>
            <td>
                <a href="edit/${item.id}">Edytuj</a>
                <a href="delete/${item.id}">Usuń</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
