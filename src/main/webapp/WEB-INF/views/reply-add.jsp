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
    <title>Add reply</title>
</head>
<body>
<h1>Reply:</h1>
<form:form modelAttribute="reply" method="post">
    ${errorMessage}<br>
    Treść:<br><form:textarea path="text"/><br>
    <form:errors path="text"/><br>
    <input type="hidden" name="referer" value="${referer}"/>
    <input type="submit" value="Dalej"/>
</form:form>
</body>
</html>
