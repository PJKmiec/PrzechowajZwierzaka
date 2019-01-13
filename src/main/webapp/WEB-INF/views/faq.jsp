<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="components/header.jsp"/>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">Pytania i odpowiedzi
        <small></small>
    </h1>

    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="/">PrzechowajZwierzaka.pl</a>
        </li>
        <li class="breadcrumb-item active">Pytania i odpowiedzi</li>
    </ol>

    <div class="text-center">
        <img src="/resources/img/pet10.jpg" width="800" height="533">
    </div>

    <div class="mb-4" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="card">
            <div class="card-header" role="tab" id="headingOne">
                <h5 class="mb-0">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true"
                       aria-controls="collapseOne">Dlaczego PrzechowajZwierzaka.pl?</a>
                </h5>
            </div>

            <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne">
                <div class="card-body">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel tincidunt neque.
                    Suspendisse sit amet ex pellentesque, laoreet leo vitae, mollis velit. Cras lobortis enim eu
                    ultricies pretium. Vivamus in dui rutrum, porttitor ante eget, pharetra mi. Suspendisse potenti.
                    Cras rutrum sapien dui, eget porta ante malesuada sed. Nulla luctus laoreet est, nec egestas mi
                    imperdiet vel. Nullam neque ligula, scelerisque elementum elementum a, vestibulum a nisl. Ut luctus,
                    quam vel feugiat eleifend, nulla justo efficitur ante, at ullamcorper turpis justo ut felis. Integer
                    at lorem sit amet odio feugiat luctus in quis dolor. Proin placerat fermentum aliquet.
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header" role="tab" id="headingTwo">
                <h5 class="mb-0">
                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"
                       aria-expanded="false" aria-controls="collapseTwo">Co jeśli jastrząb porwie mi pudelka?
                    </a>
                </h5>
            </div>
            <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo">
                <div class="card-body">
                    Phasellus risus lectus, laoreet eget turpis eu, gravida aliquam enim. Nulla eget odio purus.
                    Maecenas luctus est eros, et ultrices turpis dictum sit amet. Donec vitae tristique mi. Nulla rutrum
                    urna leo, at vehicula enim ultrices eu. Mauris dictum turpis metus, nec sollicitudin enim tincidunt
                    id. Phasellus et scelerisque lacus. Suspendisse imperdiet enim sed orci tempor, ac semper enim
                    ultricies. Vestibulum vehicula risus et lacus finibus, in tincidunt nisi fermentum. Proin hendrerit
                    risus nec justo fermentum, quis euismod nisl cursus. Ut ex purus, eleifend id sapien ac, pretium
                    suscipit quam. Nullam ultricies mollis iaculis. Cras nec rutrum risus, at volutpat quam. Vestibulum
                    pretium finibus varius.
                </div>
            </div>
        </div>
        <div class="card">
            <div class="card-header" role="tab" id="headingThree">
                <h5 class="mb-0">
                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree"
                       aria-expanded="false" aria-controls="collapseThree">Wielkie pytanie o życie, wszechświat i całą
                        resztę</a>
                </h5>
            </div>
            <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree">
                <div class="card-body">
                    Odpowiedź to 42.
                </div>
            </div>
        </div>
    </div>

</div>
<!-- /.container -->

<jsp:include page="components/footer.jsp"/>