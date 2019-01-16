<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="components/header.jsp"/>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">Zarejestruj się
        <small></small>
    </h1>

    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="/">PrzechowajZwierzaka.pl</a>
        </li>
        <li class="breadcrumb-item active">Zarejestruj się</li>
    </ol>

    <div class="card mb-4">
        <div class="card-body">
            <div class="row">

                <form:form modelAttribute="user" method="post" class="form-horizontal centered-form">
                    <div class="form-group">
                        <span class="form-error">${errorMessage}</span>
                        <label class="control-label col-sm-4" for="login">Login:</label>
                        <div class="col-sm-10">
                            <form:input path="login" class="form-control" placeholder="Twój login"/>
                            <form:errors path="login"/><br>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-4" for="login">Hasło:</label>
                        <div class="col-sm-10">
                            <form:password path="password" class="form-control" placeholder="Twoje hasło"/>
                            <form:errors path="login"/><br>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-4" for="login">Email:</label>
                        <div class="col-sm-10">
                            <form:input path="email" class="form-control" placeholder="Twój adres email"/>
                            <form:errors path="email"/><br>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-4" for="login">Obrazek profilowy:</label>
                        <div class="col-sm-10">
                            <form:input path="pic" class="form-control" placeholder="Na razie tylko ścieżka"/>
                            <form:errors path="pic"/><br>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-4" for="login">Miasto:</label>
                        <div class="col-sm-10">
                            <form:input path="city" class="form-control" placeholder="Twoje miasto zamieszkania"/>
                            <form:errors path="city"/><br>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-4" for="login">Adres:</label>
                        <div class="col-sm-10">
                            <form:input path="address" class="form-control" placeholder="Twój adres zamieszkania"/>
                            <form:errors path="address"/><br>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-4" for="login">Ocena:</label>
                        <div class="col-sm-10">
                            <input name="rating" type="number" value="10" min="1" max="10"/>
                            <form:errors path="rating"/><br>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-4" for="login">Poziom:</label>
                        <div class="col-sm-10">
                            <form:select path="type" class="selectpicker">
                                <form:option value="1">Użytkownik</form:option>
                                <form:option value="2">Admin</form:option>
                            </form:select>
                            <form:errors path="type"/><br>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Zarejestruj się</button>
                        </div>
                    </div>
                </form:form>


            </div>
        </div>
    </div>

</div>
<!-- /.container -->

<jsp:include page="components/footer.jsp"/>