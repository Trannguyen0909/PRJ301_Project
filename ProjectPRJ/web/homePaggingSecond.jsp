<%-- 
    Document   : home
    Created on : Mar 1, 2022, 4:53:59 PM
    Author     : FPTSHOP-ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
        <%@include file ="components/navBarComponent.jsp" %>
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
        <!-- Main Content-->
        <section class="counter section-sm">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-3">
                        <div class="counters-item">
                            <span>V??? tr?? ?????a l??</span>
                            <p>Ti??nh mi????n nu??i phi??a B???c n????m ???? trung t??m vu??ng nu??i va?? trung du B????c B???? Vi????t Nam</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-3">
                        <div class="counters-item">
                            <span>Di???n T??ch</span>
                            <p> 6.892,68 km2</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-3">
                        <div class="counters-item">
                            <span>D??n s???</span>
                            <p>831.586 Ng?????i</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-3">
                        <div class="counters-item kill-border">
                            <span>M???t ????? D??n S???</span>
                            <p>121 ng?????i/km2</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--
    Start About Section
    ==================================== -->
        <section class="about-2 section bg-gray" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-6 align-self-center mb-4" style="padding-right: 10px;">
                        <div class="align-self-center">
                            <h2 style="color: #31BB9E;">Chi???n khu v???n</h2>
                            <p>Di t??ch chi???n khu V???n l?? m???t m???c son c???a s??? ki???n l???ch s??? Y??n B??i n??i ri??ng
                                v?? c???a v??ng T??y B???c n??i chung. Chi???n khu V???n ???? c?? vai tr?? quy???t ?????nh trong vi???c 
                                chu???n b??? l???c l?????ng ????? ?????u tranh gi??nh ch??nh quy???n c??ch m???ng ??? hai t???nh Ph?? Th??? - Y??n B??i
                                v?? huy???n Ph?? Y??n (S??n La) ?????ng th???i l?? c??n c??? ?????m b???o cho ?????a ph????ng trong c??ng cu???c chu???n b??? ??i
                                v??o cu???c kh??ng chi???n ch???ng Ph??p quy???t li???t (1946 - 1954), l?? n??i th??nh l???p Ban c??n s??? ?????ng li??n t???nh Y??n B??i - Ph?? Th???,
                                n??i h??nh th??nh v?? ra ?????i c???a ?????ng b??? t???nh Y??n B??i.</p>
                            <a href="filter-group?groupId=104" class="btn btn-main">Tham Gia Ngay</a>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div id="myDiv">
                            <img src="images/chien-khu-van.jpg" style="width: 80%; height: 90%; border-radius: 50px;"
                                 alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="about-2 section bg-white" id="about">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-md-6 px-5">
                        <div id="myDiv">
                            <img src="images/suoigiang.jpg"
                                 style="width: 105%; margin-right: 100%; border-radius: 50px;" alt="">
                        </div>
                    </div>
                    <div class="col-12 col-md-6 align-self-center mb-4 mb-md-0 px-5 ">
                        <div class="align-self-center">
                            <h2 class="text-center" style="color: #31BB9E;">Khu du l???ch Su???i Gi??ng</h2>
                            <p>V?????t qua cung ???????ng quanh co, u???n l?????n ??m tr???n l???y nh???ng s?????n n??i, h??t m???t h??i c??ng ?????y 
                                l???ng ng???c ????? t???n h?????ng kh??ng kh?? trong l??nh, ph??ng t???m m???t ng???m nh??n nh???ng ?????i hoa r???c r???, 
                                nh???ng ?????i ch?? c??? th??? h??ng tr??m n??m tu???i hay ng???i b??n b???p l???a b???p b??ng th?????ng th???c ch??n tr?? 
                                Shan tuy???t th??m h????ng... Nh???ng tr???i nghi???m tuy???t v???i v?? kh?? qu??n khi ?????n v???i Su???i Gi??ng,
                                huy???n V??n Ch???n...</p>
                            <a href="filter-group?groupId=105" class="btn btn-main" style="margin-left: 35%;">Tham Gia Ngay</a>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <section class="about-2 section bg-gray" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-6 align-self-center mb-4 mb-md-0">
                        <div class="align-self-center">
                            <h2 style="color: #31BB9E;">Khu b???o t???n thi??n nhi??n H?? N???u </h2>
                            <p>Khu b???o t???n thi??n nhi??n N?? H???u c???a huy???n V??n Y??n ???????c bi???t ?????n l?? n??i l??u gi???
                                ???????c m???t h??? sinh th??i ?????ng, th???c v???t phong ph?? v?? ??a d???ng. T??? trung t??m th??? tr???n M???u A,
                                huy???n V??n Y??n qua c???u M???u A b???c qua s??ng H???ng theo tuy???n ???????ng t??? x?? An Th???nh ??i x?? ?????i
                                S??n kho???ng 30 km v??? h?????ng T??y Nam, v?????t qua d???c Ba Khuy v???t ngang s?????n n??i, du kh??ch s???
                                ?????n x?? N?? H???u, m???t x?? c?? 100% ?????ng b??o M??ng sinh s???ng...</p>
                            <a href="filter-group?groupId=106" class="btn btn-main">Tham Gia Ngay</a>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div id="myDiv">
                            <img src="images/khubaotonthiennhienhanau.jpg" style="width: 110%; border-radius: 50px;" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <nav aria-label="Page navigation example" class="d-flex justify-content-center">
            <ul class="pagination">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li class="page-item"><a class="page-link" href="Home">1</a></li>
                <li class="page-item"><a class="page-link" href="homePaggingSecond.jsp">2</a></li>
                <li class="page-item"><a class="page-link" href="homePaggingThird.jsp">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
        <!--
    Start Call To Action
    ==================================== -->
        <section class="call-to-action section-sm">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <h2>H??y c??ng kh??m ph?? ???m th???c Mi???n n??i T??y B???c nh??! </h2>
                        <p>V??n h??a ???m th???c v??ng T??y B???c mang ?????c tr??ng c???a c??c d??n t???c thi???u s??? c??ng <br> Nguy??n li???u ch???
                            bi???n v?? c??ng phong ph??</p>
                        <a href="" class="btn btn-main">Kh??m ph?? ngay</a>
                    </div>
                </div> <!-- End row -->
            </div> <!-- End container -->
        </section> <!-- End section -->
        <!--
    Start About Section
    ==================================== -->
        <section class="service-2 section bg-white">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="title text-center">
                            <h4>Y??n B??i</h4>
                            <h2>????ng k?? du l???ch</h2>
                            <span class="border"></span>
                            <p>????? kh??m ph??, tham quan du l???ch t???i Y??n B??i vui l??ng l??m theo h?????ng d???n d?????i ????y ????? ch??ng t??i
                                c?? th??? li??n l???c v???i b???n 1 c??ch nhanh nh???t!</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 p-0">
                        <div class="service-item text-center">
                            <span class="count">1.</span>
                            <h4>????ng k??</h4>
                            <p>N???u b???n ch??a c?? t??i kho???n b???n vui l??ng nh???p v??o n??t ????ng k?? ????? t???o t??i kho???n.N???u b???n ???? c??
                                t??i kho???n vui l??ng chuy???n sang b?????c 2.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 p-0">
                        <div class="service-item text-center">
                            <span class="count">2.</span>
                            <h4>????ng nh???p</h4>
                            <p>N???u b???n ???? c?? t??i kho???n, h??y ????ng nh???p r???i sau ???? nh???p v??o ph???n du l???ch.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 p-0">
                        <div class="service-item text-center">
                            <span class="count">3.</span>
                            <h4>Du l???ch</h4>
                            <p>Sau khi nh???p v??o ph???n du l???ch h??y ch???n n??i m?? b???n mu???n ?????n.Sau khi ????ng k?? xong ch??ng t??i s???
                                g???i ?????n b???n th??ng b??o qua t??i kho???n v?? s??? ??i???n tho???i c???a b???n s???m nh???t. Ch??c b???n c?? m???t
                                chuy???n ??i vui v???.
                            </p>
                        </div>
                    </div>
                </div> <!-- End row -->
            </div> <!-- End container -->
        </section> <!-- End section -->
        <%@include file ="components/footerComponent.jsp" %>
    </body>

</html>
