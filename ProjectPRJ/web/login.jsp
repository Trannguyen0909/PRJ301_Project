<%-- 
    Document   : login.jsp
    Created on : Mar 7, 2022, 2:02:59 PM
    Author     : FPTSHOP-ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Clean Blog - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet"
              type="text/css" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
            rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        
    <c:if test="${sessionScope.account != null}">
            <c:redirect url="home.jsp"></c:redirect>
        </c:if>
        
        
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
        <div class="container px-4 px-lg-5">
            <a class="navbar-brand" href="index.html"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                    aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto py-4 py-lg-0">
                    <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="home.jsp">Trang ch???</a></li>
                    <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="food.jsp">???m Th???c</a></li>
                    <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="travel">Du l???ch</a></li>
                    <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="login.jsp">????ng nh???p</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Page Header-->
    <header class="masthead "
            style=" background-image: url('images/nghialo.jpg'); background-color: #31BB9E !important;margin-bottom: 0px !important; ">
        <div class="container position-relative px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <div class="site-heading">
                        <h2 style="padding-top: 40% !important;"></h2>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <section class="signin-page account">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mx-auto">
                    <div class="block mt-3">
                        <h2 style="font-size: 28px" class="text-center mb-2">????ng nh???p ????? tham gia c??ng ch??ng t??i!</h2>

                        <form  class="text-left clearfix mt-50" action="login" method="POST" >
                            <div class="${classAlert}">
                                <strong>${strongAlert}</strong> ${alert}
                            </div>
                            <div class="form-group">
                                <input type="username" class="form-control"  placeholder="Username" name="username">
                            </div>
                            <div class="form-group my-2" >
                                <input type="password" class="form-control" placeholder="Password" name="password">
                            </div>
                            <div  class="mb-3 form-check">
                                <input style="border-radius: 40px; " type="checkbox" class="form-check-input" id="exampleCheck1" name="remember">
                                <label style="font-size: 18px;" class="form-check-label" for="exampleCheck1">Remember me</label>
                            </div>
                            <button type="submit" class="btn btn-main" >????ng nh???p</button>
                            <div>
                                <c:if test="${requestScope.ADDMEMBER_MSG != null}">
                                    <p style="color: red">${requestScope.ADDMEMBER_MSG}</p>
                                </c:if>
                            </div>
                        </form>
                        <p class="mt-20">B???n ch??a c?? t??i kho???n?<a href="SignUp"> H??y ????ng k?? ngay</a></p>
                        <p><a href="SignUp">Qu??n m???t kh???u?</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%@include file ="components/footerComponent.jsp" %>
</body>
</html>
