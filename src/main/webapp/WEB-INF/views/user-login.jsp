<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="components/header.jsp"/>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">Zaloguj się
        <small></small>
    </h1>

    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="/">PrzechowajZwierzaka.pl</a>
        </li>
        <li class="breadcrumb-item active">Zaloguj się</li>
    </ol>

    <div class="card mb-4">
        <div class="card-body">
            <div class="row">

                <form:form modelAttribute="user" method="post" class="form-horizontal centered-form">
                    <div class="form-group">
                        <span class="form-error">${errorMessage}</span>
                        <label class="control-label col-sm-2" for="login">Login:</label>
                        <div class="col-sm-10">
                            <form:input path="login" class="form-control" placeholder="Twój login" />
                            <form:errors path="login"/><br>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="password">Hasło:</label>
                        <div class="col-sm-10">
                            <form:password path="password" class="form-control" placeholder="Twoje hasło" />
                            <form:errors path="password"/><br>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label><input type="checkbox" name="rememberMe" value="1"> Pamiętaj mnie</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Zaloguj się</button>
                        </div>
                        <hr>
                        Nie masz jeszcze konta? <a href="/user/register">Zarejestruj się teraz! &raquo;</a>
                    </div>
                </form:form>


            </div>
        </div>
    </div>

</div>
<!-- /.container -->

<jsp:include page="components/footer.jsp"/>
