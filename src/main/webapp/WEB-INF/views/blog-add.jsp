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
    <title>Blog add</title>
</head>
<body>
<h1>New post:</h1>
<form:form modelAttribute="blog" method="post">
    ${errorMessage}<br>
    Tytuł:<br><form:input path="title"/><br>
    <form:errors path="title"/><br>
    Tresć:<br><form:textarea path="content"/><br>
    <form:errors path="content"/><br>
    Ścieżka do obrazka:<br><form:input path="pic"/><br>
    <form:errors path="pic"/><br>

    <input type="submit" value="Dalej"/>
</form:form>
</body>
</html>
