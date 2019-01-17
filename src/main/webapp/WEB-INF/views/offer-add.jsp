<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="components/header.jsp"/>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">Dodaj ofertę
        <small></small>
    </h1>

    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="/">PrzechowajZwierzaka.pl</a>
        </li>
        <li class="breadcrumb-item active">Dodaj ofertę</li>
    </ol>

    <div class="card mb-4">
        <div class="card-body">
            <div class="row">

                <form:form modelAttribute="offer" method="post" class="form-horizontal centered-form">

                    <div class="form-group row">
                        <label class="control-label col-sm-3" for="type">Rodzaj oferty:</label>
                        <div class="col-sm-9">
                            <form:select path="type" class="form-control">
                                <form:option value="o">Szukam opiekuna</form:option>
                                <form:option value="s">Zaopiekuję się</form:option>
                            </form:select>
                            <small class="form-text text-error"><form:errors path="type"/></small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="control-label col-sm-3" for="pet_name">Imię pupila:</label>
                        <div class="col-sm-9">
                            <form:input path="pet_name" class="form-control" placeholder="Imię Twojego pupila"/>
                            <small class="form-text text-error"><form:errors path="pet_name"/></small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="control-label col-sm-3" for="pic">Zdjęcie:</label>
                        <div class="col-sm-9">
                            <form:input path="pic" class="form-control" placeholder="Na razie tylko ścieżka"/>
                            <small class="form-text text-error"><form:errors path="pic"/></small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="control-label col-sm-3" for="starts">Ważne od:</label>
                        <div class="col-sm-9">
                            <form:input path="starts" class="form-control" placeholder="yyyy-MM-dd HH:mm:ss"/>
                            <small class="form-text text-error"><form:errors path="starts"/></small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="control-label col-sm-3" for="ends">Ważne do:</label>
                        <div class="col-sm-9">
                            <form:input path="ends" class="form-control" placeholder="yyyy-MM-dd HH:mm:ss"/>
                            <small class="form-text text-error"><form:errors path="ends"/></small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="control-label col-sm-3" for="price">Cena:</label>
                        <div class="col-sm-9">
                            <form:input path="price" class="form-control" placeholder="Cena jaką proponujesz"/>
                            <small class="form-text text-error"><form:errors path="price"/></small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="control-label col-sm-3" for="price">Miasto:</label>
                        <div class="col-sm-9">
                            <form:input path="city" class="form-control" placeholder="Miasto którego dotyczy oferta"/>
                            <small class="form-text text-error"><form:errors path="city"/></small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="control-label col-sm-3" for="address">Adres:</label>
                        <div class="col-sm-9">
                            <form:input path="address" class="form-control"
                                        placeholder="Ulica, numer ulicy, numer mieszkania"/>
                            <small class="form-text text-error"><form:errors path="address"/></small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="control-label col-sm-3" for="phone">Numer telefonu:</label>
                        <div class="col-sm-9">
                            <form:input path="phone" class="form-control" placeholder="Telefon kontaktowy"/>
                            <small class="form-text text-error"><form:errors path="phone"/></small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="control-label col-sm-3" for="email">Email:</label>
                        <div class="col-sm-9">
                            <form:input path="email" class="form-control" placeholder="Adres email do kontaktu"/>
                            <small class="form-text text-error"><form:errors path="email"/></small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="control-label col-sm-3" for="description">Opis oferty:</label>
                        <div class="col-sm-9">
                            <form:textarea path="description" class="form-control" rows="3" maxlength="1000"/>
                            <small class="form-text text-error"><form:errors path="description"/></small>
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-sm-3">
                            Zwierzęta:
                        </div>

                        <div class="col">
                            <div class="form-row">

                                <label class="control-label col-sm-3" for="cats">Koty:</label>
                                <div class="col-sm-2">
                                    <input name="cats" type="number" value="0" class="form-control"/>
                                </div>

                                <div class="col-sm-2"></div>

                                <label class="control-label col-sm-3" for="dogs">Psy:</label>
                                <div class="col-sm-2">
                                    <input name="dogs" type="number" value="0" class="form-control"/>
                                </div>


                                <label class="control-label col-sm-3" for="birds">Ptaki:</label>
                                <div class="col-sm-2">
                                    <input name="birds" type="number" value="0" class="form-control"/>
                                </div>

                                <div class="col-sm-2"></div>

                                <label class="control-label col-sm-3" for="fish">Rybki:</label>
                                <div class="col-sm-2">
                                    <input name="fish" type="number" value="0" class="form-control"/>
                                </div>


                                <label class="control-label col-sm-3" for="small-rodents">Małe gryzonie:</label>
                                <div class="col-sm-2">
                                    <input name="small-rodents" type="number" value="0" class="form-control"/>
                                </div>

                                <div class="col-sm-2"></div>

                                <label class="control-label col-sm-3" for="big-rodents">Duże gryzonie:</label>
                                <div class="col-sm-2">
                                    <input name="big-rodents" type="number" value="0" class="form-control"/>
                                </div>


                                <label class="control-label col-sm-3" for="reptiles">Gady/płazy:</label>
                                <div class="col-sm-2">
                                    <input name="reptiles" type="number" value="0" class="form-control"/>
                                </div>

                                <div class="col-sm-2"></div>

                                <label class="control-label col-sm-3" for="bugs">Owady:</label>
                                <div class="col-sm-2">
                                    <input name="bugs" type="number" value="0" class="form-control"/>
                                </div>


                                <label class="control-label col-sm-3" for="horses">Konie:</label>
                                <div class="col-sm-2">
                                    <input name="horses" type="number" value="0" class="form-control"/>
                                </div>

                                <div class="col-sm-2"></div>

                                <label class="control-label col-sm-3" for="misc">Inne:</label>
                                <div class="col-sm-2">
                                    <input name="misc" type="number" value="0" class="form-control"/>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-sm-3">
                            Wymagania:
                        </div>

                        <div class="col">
                            <div class="form-row">

                                <div class="col-sm-6">
                                    <input name="requirements" class="form-check-input" type="checkbox" value="f"
                                           <c:if test="${fn:contains(offer.requirements, 'f')}">checked</c:if> />
                                    Karmienie
                                </div>

                                <div class="col-sm-6">
                                    <input name="requirements" class="form-check-input" type="checkbox" value="w"
                                           <c:if test="${fn:contains(offer.requirements, 'w')}">checked</c:if> />
                                    Spacery
                                </div>

                                <div class="col-sm-6">
                                    <input name="requirements" class="form-check-input" type="checkbox" value="c"
                                           <c:if test="${fn:contains(offer.requirements, 'c')}">checked</c:if> />
                                    Sprzątanie
                                </div>

                                <div class="col-sm-6">
                                    <input name="requirements" class="form-check-input" type="checkbox" value="g"
                                           <c:if test="${fn:contains(offer.requirements, 'g')}">checked</c:if> />
                                    Pielęgnacja
                                </div>

                                <div class="col-sm-6">
                                    <input name="requirements" class="form-check-input" type="checkbox" value="m"
                                           <c:if test="${fn:contains(offer.requirements, 'm')}">checked</c:if> />
                                    Podawanie leków
                                </div>

                                <div class="col-sm-6">
                                    <input name="requirements" class="form-check-input" type="checkbox" value="t"
                                           <c:if test="${fn:contains(offer.requirements, 't')}">checked</c:if> />
                                    Transport
                                </div>

                                <div class="col-sm-6">
                                    <input name="requirements" class="form-check-input" type="checkbox" value="e"
                                           <c:if test="${fn:contains(offer.requirements, 'e')}">checked</c:if> />
                                    Monitorowanie zdrowia
                                </div>

                                <div class="col-sm-6">
                                    <input name="requirements" class="form-check-input" type="checkbox" value="v"
                                           <c:if test="${fn:contains(offer.requirements, 'v')}">checked</c:if> />
                                    Wizyta u weterynarza
                                </div>

                                <div class="col-sm-6">
                                    <input name="requirements" class="form-check-input" type="checkbox" value="i"
                                           <c:if test="${fn:contains(offer.requirements, 'i')}">checked</c:if> />
                                    Zwierzę jest chore
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Dodaj ofertę</button>
                        </div>
                    </div>

                </form:form>

            </div>
        </div>
    </div>

</div>
<!-- /.container -->

<jsp:include page="components/footer.jsp"/>