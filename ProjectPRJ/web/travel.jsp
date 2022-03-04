<%-- 
    Document   : dulich
    Created on : Mar 1, 2022, 9:44:31 PM
    Author     : FPTSHOP-ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
            rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
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
                        <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="home.jsp">Trang chủ</a></li>
                        <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="amthuc.jsp">Ẩm Thực</a></li>
                        <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="dulich.jsp">Du lịch</a></li>
                        <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="contact.html">Liên Hệ</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page Header-->
        <header class="masthead"
                style=" background-image: url('images/hinh-nen-voi-nhung-gam-mau-cua-mu-cang-chai-cua-viet-nam.jpg')">
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
   
        <div class="container mt-3">
            <div class="row">
                <div class="col-md-3 mb-5"><ul class="list-group">
                        <h3>Du lịch Yên Bái</h3>
                        <c:forEach items="${listGroupById}" var = "G">

                            <li  class="list-group-item"><a href="filter-group?groupId=${G.groupId}">${G.groupName}</a></li>
                            </c:forEach>                      
                    </ul> </div>
                <div class="col-md-9 ">
                    <h3>Lịch đi và cập nhật địa điểm du lịch Yên Bái </h3>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID </th>
                                <th>Điểm Đến</th>
                                <th>Ngày Đi</th>
                                <th>Ngày Về</th>
                                <th>Bảng giá(VND)</th>
                                <th>Tìm hiểu thêm</th>
                            </tr>
                        </thead>
                        <c:forEach items="${listGroups}" var = "L" >
                            <tbody>
                                <tr>
                                    <td>${L.id}</td>
                                    <td>${L.groupName}</td>
                                    <td>${L.from_date}</td>
                                    <td>${L.to_date}</td>
                                    <td>${L.price}</td>
                                    <td><a href="detail?id=${L.id}" type="submit" style="text-decoration: none; box-shadow: 0 3px black; ">Thông tin chi tiết</a></td>
                                </tr>
                            </tbody>
                        </c:forEach>

                    </table>
                </div>
            </div>

        </div>
        <footer class="border-top" style="background-color: #222222">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <ul class="list-inline text-center">
                            <li class="list-inline-item">
                                <a href="#!">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#!">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#!">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                        </ul>
                        <div class="small text-center text-muted fst-italic">
                            <ul>
                                <p>Contact Us: </p>
                                <p>PhoneNumber: 0825274332</p>
                                <p>Address : 360 Lê Hồng Phong, thành phố Yên Bái, Tỉnh Yên Bái</p>
                                <p>Gmail: trannguyen19032001@gmail.com.</p>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
