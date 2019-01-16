<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Comments</title>
</head>
<body>
<h1>Comments:</h1>
<table border="1" cellpadding="5">
    <thead>
    <th>ID:</th>
    <th>Tekst:</th>
    <th>Autor:</th>
    <th>Dodano:</th>
    <th>Status:</th>
    <th>Akcje:</th>
    </thead>
    <tbody>
    <c:forEach items="${comments}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.text}</td>
            <td>${item.user.login}</td>
            <td>${item.created}</td>
            <td>${item.status}</td>
            <td>
                <a href="/reply/${item.id}">Odpowiedz</a>
                <a href="/comments/flag/${item.id}">Zgłoś</a>
                <a href="/comments/delete/${item.id}">Usuń</a>
            </td>
        </tr>
        <c:if test="${not empty item.replies}">
            <c:forEach items="${item.replies}" var="r">
                <tr>
                    <td colspan="6">
                        <b>${r.user.login}</b> <i>(${r.created})</i>: ${r.text}
                    </td>
                </tr>
            </c:forEach>
        </c:if>
    </c:forEach>
    </tbody>
</table>

<br>
<form:form modelAttribute="comment" method="post">
    ${errorMessage}<br>
    Treść:<br><form:textarea path="text"/><br>
    <form:errors path="text"/><br>

    <input type="submit" value="Dalej"/>
</form:form>

</body>
</html>
