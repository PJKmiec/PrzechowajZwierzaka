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
    <title>Offer add</title>
</head>
<body>
<h1>Offer:</h1>
<form:form modelAttribute="offer" method="post">
    ${errorMessage}<br>
    Imię pupila:<br><form:input path="pet_name"/><br>
    <form:errors path="pet_name"/><br>
    Ścieżka obrazka:<br><form:input path="pic"/><br>
    <form:errors path="pic"/><br>
    Początek:<br><form:input path="starts"/><br>
    <form:errors path="starts"/><br>
    Koniec:<br><form:input path="ends"/><br>
    <form:errors path="ends"/><br>
    Cena:<br><form:input path="price"/><br>
    <form:errors path="price"/><br>
    Miasto:<br><form:input path="city"/><br>
    <form:errors path="city"/><br>
    Adres:<br><form:input path="address"/><br>
    <form:errors path="address"/><br>
    Telefon:<br><form:input path="phone"/><br>
    <form:errors path="phone"/><br>
    Email:<br><form:input path="email"/><br>
    <form:errors path="email"/><br>
    Opis:<br><form:textarea path="description"/><br>
    <form:errors path="description"/><br>
    Psy: <form:input path="dogs"/><br>
    <form:errors path="dogs"/><br>
    Koty: <form:input path="cats"/><br>
    <form:errors path="cats"/><br>
    Ptaki: <form:input path="birds"/><br>
    <form:errors path="birds"/><br>
    Ryby: <form:input path="fish"/><br>
    <form:errors path="fish"/><br>
    Małe gryzonie: <form:input path="small_rodents"/><br>
    <form:errors path="small_rodents"/><br>
    Duże gryzonie: <form:input path="big_rodents"/><br>
    <form:errors path="big_rodents"/><br>
    Płazy/gady: <form:input path="reptiles"/><br>
    <form:errors path="reptiles"/><br>
    Konie: <form:input path="horses"/><br>
    <form:errors path="horses"/><br>
    Owady: <form:input path="bugs"/><br>
    <form:errors path="bugs"/><br>
    Inne: <form:input path="misc"/><br>
    <form:errors path="misc"/><br>
    Potrzebuje:<br>
    <input name="requirements" type="checkbox" value="f" <c:if test = "${fn:contains(offer.requirements, 'f')}">checked</c:if> />karmienia<br>
    <input name="requirements" type="checkbox" value="w" <c:if test = "${fn:contains(offer.requirements, 'w')}">checked</c:if> />spacerów<br>
    <input name="requirements" type="checkbox" value="c" <c:if test = "${fn:contains(offer.requirements, 'c')}">checked</c:if> />sprzątania<br>
    <input name="requirements" type="checkbox" value="g" <c:if test = "${fn:contains(offer.requirements, 'g')}">checked</c:if> />pielęgnacji<br>
    <input name="requirements" type="checkbox" value="m" <c:if test = "${fn:contains(offer.requirements, 'm')}">checked</c:if> />podawania leków<br>
    <input name="requirements" type="checkbox" value="t" <c:if test = "${fn:contains(offer.requirements, 't')}">checked</c:if> />transportu<br>
    <input name="requirements" type="checkbox" value="e" <c:if test = "${fn:contains(offer.requirements, 'e')}">checked</c:if> />badania<br>
    <input name="requirements" type="checkbox" value="v" <c:if test = "${fn:contains(offer.requirements, 'v')}">checked</c:if> />wizyty u weterynarza<br>
    <input name="requirements" type="checkbox" value="i" <c:if test = "${fn:contains(offer.requirements, 'i')}">checked</c:if> />choruje<br>

    <input type="submit" value="Dalej"/>
</form:form>
</body>
</html>
