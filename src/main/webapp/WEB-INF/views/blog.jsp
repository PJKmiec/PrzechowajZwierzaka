<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Blog</title>
</head>
<body>
<h1>Blog:</h1>

<table border="1" cellpadding="5">
    <thead>
    <th>ID:</th>
    <th>Dodano:</th>
    <th>Edytowano:</th>
    <th>Tytuł:</th>
    <th>Treść:</th>
    <th>Obrazek:</th>
    <th>Akcje:</th>
    </thead>
    <tbody>
    <c:forEach items="${posts}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.created}</td>
            <td>${item.edited}</td>
            <td>${item.title}</td>
            <td>${item.content}</td>
            <td>${item.pic}</td>
            <td>
                <a href="/comment/blog/${item.id}">Skomentuj</a>
                <a href="edit/${item.id}">Edytuj</a>
                <a href="delete/${item.id}">Usuń</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
