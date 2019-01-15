<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: pawel
  Date: 14.01.19
  Time: 12:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Review add</title>
</head>
<body>
<h1>Review:</h1>
<form:form modelAttribute="review" method="post">
    ${errorMessage}<br>
    Ocena:<br><input name="rating" type="number" min="1" max="10"/><br>
    <form:errors path="rating"/><br>
    Opis:<br><form:textarea path="description"/><br>
    <form:errors path="description"/><br>
    Gatunek zwierzęcia:<br><form:input path="animal_type"/><br>
    <form:errors path="animal_type"/><br>
    Rodzaj oferty:<br>
    <form:radiobutton path="type" value="o" checked="checked" />Od właściciela<br>
    <form:radiobutton path="type" value="s"/>Od opiekuna<br>

    <input type="submit" value="Dalej"/>
</form:form>
</body>
</html>
