<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="components/header.jsp"/>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">Kontakt
        <small></small>
    </h1>

    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="/">PrzechowajZwierzaka.pl</a>
        </li>
        <li class="breadcrumb-item active">Kontakt</li>
    </ol>

    <!-- Content Row -->
    <div class="row">
        <!-- Map Column -->
        <div class="col-lg-8 mb-4">
            <!-- Embedded Google Map -->
            <iframe width="100%" height="400px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2447.785259477599!2d20.95941695169631!3d52.15641487964762!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x471933a73cda90e3%3A0x37d7a56a9da4261!2sSchronisko+na+Paluchu!5e0!3m2!1sen!2spl!4v1547403793952"></iframe>
        </div>
        <!-- Contact Details Column -->
        <div class="col-lg-4 mb-4">
            <h3>O nas</h3>
            <p>
                Paluch 2
                <br>02-147 Warszawa
                <br>
            </p>
            <p>
                <abbr title="Telefon kontaktowy">Tel.:</abbr>123-456-789
            </p>
            <p>
                <abbr title="Email">Email:</abbr>
                <a href="mailto:kontakt@przechowajzwierzaka.pl">kontakt@przechowajzwierzaka.pl
                </a>
            </p>
            <p>
                <abbr title="Godziny otwarcia">Otwarte:</abbr>Poniedziałek - Piątek: 9:00 - 17:00
            </p>
        </div>
    </div>
    <!-- /.row -->

    <!-- Contact Form -->
    <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <div class="row">
        <div class="col-lg-8 mb-4">
            <h3>Napisz do nas</h3>
            <form name="sentMessage" id="contactForm" novalidate>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Imię i nazwisko:</label>
                        <input type="text" class="form-control" id="name" required data-validation-required-message="Podaj swoje imię.">
                        <p class="help-block"></p>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Numer telefonu:</label>
                        <input type="tel" class="form-control" id="phone" required data-validation-required-message="Podaj swój numer telefonu.">
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Adres email:</label>
                        <input type="email" class="form-control" id="email" required data-validation-required-message="Podaj swój adres email.">
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>Wiadomość:</label>
                        <textarea rows="10" cols="100" class="form-control" id="message" required data-validation-required-message="Wpisz wiadomość" maxlength="999" style="resize:none"></textarea>
                    </div>
                </div>
                <div id="success"></div>
                <!-- For success/fail messages -->
                <button type="submit" class="btn btn-primary" id="sendMessageButton">Wyślij wiadomość</button>
            </form>
        </div>

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<jsp:include page="components/footer.jsp"/>