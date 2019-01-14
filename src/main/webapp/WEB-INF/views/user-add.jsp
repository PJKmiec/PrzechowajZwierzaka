<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>User Add</title>
</head>
<body>
<h1>User:</h1>
<form:form modelAttribute="user" method="post">
    ${errorMessage}<br>
    Login:<br><form:input path="login"/><br>
    <form:errors path="login"/><br>
    Adres email:<br><form:input path="email"/><br>
    <form:errors path="email"/><br>
    Hasło:<br><form:password path="password"/><br>
    <form:errors path="password"/><br>
    Miasto:<br><form:input path="city"/><br>
    <form:errors path="city"/><br>
    Adres:<br><form:input path="address"/><br>
    <form:errors path="address"/><br>
    Rating:<br><form:input path="rating"/><br>
    <form:errors path="rating"/><br>
    Typ: <br><form:select path="type">
        <form:option value="1">Użytkownik</form:option>
        <form:option value="2">Admin</form:option>
    </form:select><br>
    <form:errors path="type"/><br>
    <input type="submit" value="Dalej"/>
</form:form>
</body>
</html>
