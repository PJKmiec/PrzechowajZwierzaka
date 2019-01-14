<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: pawel
  Date: 14.01.19
  Time: 18:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zaloguj się</title>
</head>
<body>
<h1>Zaloguj się:</h1>
<form:form modelAttribute="user" method="post">
    ${errorMessage}<br>
    Login:<br><form:input path="login"/><br>
    <form:errors path="login"/><br>
    Hasło:<br><form:password path="password"/><br>
    <form:errors path="password"/><br>
    <input type="submit" value="Zaloguj się"/>
</form:form>
</body>
</html>
