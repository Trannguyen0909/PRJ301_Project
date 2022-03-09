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
        <!-- Navigation-->
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
                            <span>Vị trí Địa lý</span>
                            <p>Tỉnh miền núi phía Bắc nằm ở trung tâm vùng núi và trung du Bắc Bộ Việt Nam</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-3">
                        <div class="counters-item">
                            <span>Diện Tích</span>
                            <p> 6.892,68 km2</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-3">
                        <div class="counters-item">
                            <span>Dân số</span>
                            <p>831.586 Người</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-3">
                        <div class="counters-item kill-border">
                            <span>Mật Độ Dân Số</span>
                            <p>121 người/km2</p>
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
                            <h2 style="color: #31BB9E;">Du lịch Hồ Thác Bà</h2>
                            <p>Ai đã một lần ghé thăm hồ Thác Bà chắc hẳn sẽ không khỏi ngỡ ngàng và lưu luyến
                                không quên một hồ Thác trong xanh, nên thơ và kỳ vĩ. Không chỉ cung cấp nguồn nước 
                                để phát điện lưới quốc gia, hồ Thác Bà còn là nơi điều hòa không khí trong lành và
                                điểm dừng chân của các tour du lịch. Đến thăm hồ Thác Bà, khi di chuyển bằng tàu thủy, 
                                du khách sẽ được tận hưởng không khí trong lành giữa mặt nước mênh mông, 
                                lung linh soi bóng những hòn đảo điệp trùng tưởng như vô tận, để quên hết những 
                                mệt mỏi ưu phiền của cuộc sống...</p>
                            <a href="filter-group?groupId=107" class="btn btn-main">Tham Gia Ngay</a>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div id="myDiv">
                            <img src="images/ho-chop-du.jpg" style="width: 120%; height: 120%; border-radius: 50px;"
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
                            <img src="images/Densuoitien.jpg"
                                 style="width: 105%; margin-right: 100%; border-radius: 50px;" alt="">
                        </div>
                    </div>
                    <div class="col-12 col-md-6 align-self-center mb-4 mb-md-0 px-5 ">
                        <div class="align-self-center">
                            <h2 class="text-center" style="color: #31BB9E;">Đền Suối Tiên</h2>
                            <p>Di tích đền Suối Tiên, với khuôn viên gần 6000m2, nằm trong không gian đậm nét văn
                                hóa dân gian các dân tộc Lục Yên, gắn với những truyền tích huyền thoại xa xưa và 
                                hệ thống di tích lịch sử văn hóa quốc gia Đền Đại Cại – Hắc Y và khu khảo cổ tháp Chùa
                                Thượng Miện thời Lý – Trần, là vùng đất “Non xanh kỳ thú – hấp dẫn tâm linh – Đất ngọc 
                                danh truyền”. Xung quanh có núi Thắm, núi Hắc Y, núi Bạch Mã với nhiều hang động, trên 
                                núi rừng hệ thảm thực động vật, thực vật, vi sinh vật đa dạng, phong phú; những núi đá độc lập,
                                sừng sững kỳ vĩ; phía trước đền là giếng nước quanh năm trong mát, có loài cá bỗng bản địa 
                                (dân gọi là cá thần), tạo cho đền cảnh tĩnh lặng, huyền bí...</p>
                            <a href="Notfound.jsp" class="btn btn-main" style="margin-left: 35%;">Tham Gia Ngay</a>
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
                            <h2 style="color: #31BB9E;">Bản văn hóa Ngòi Tu</h2>
                            <p>Bản văn hóa Ngòi Tu là một bản nhỏ thuộc xã Vũ Linh,
                                huyện Yên Bình, tỉnh Yên Bái. Đây là nơi sinh sống của nhiều đồng bào dân tộc như:
                                Dao, Cao Lan, Nùng, nhưng đông đảo hơn cả là người Dao trắng.
                                Bên cạnh những giá trị văn hóa to lớn, Bản văn hóa Ngòi Tu còn thu hút khách
                                du lịch nhờ vẻ đẹp thiên nhiên hoang sơ, mộc mạc mà không kém phần nên thơ, trữ tình. 
                                Ngoài ra, khi đến với Ngòi Tu, bạn còn được thưởng thức rất nhiều đặc sản độc đáo, đặc trưng 
                                của các dân tộc khác nhau...</p>
                            <a href="Notfound.jsp" class="btn btn-main">Tham Gia Ngay</a>
                        </div>
                    </div>
                    <div class="col-12 col-md-6">
                        <div id="myDiv">
                            <img src="images/ban_ngoi_tu.jpg" style="width: 110%; border-radius: 50px;" alt="">
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
                        <h2>Hãy cùng khám phá ẩm thực Miền núi Tây Bắc nhé! </h2>
                        <p>Văn hóa ẩm thực vùng Tây Bắc mang đặc trưng của các dân tộc thiểu số cùng <br> Nguyên liệu chế
                            biến vô cùng phong phú</p>
                        <a href="" class="btn btn-main">Khám phá ngay</a>
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
                            <h4>Yên Bái</h4>
                            <h2>Đăng ký du lịch</h2>
                            <span class="border"></span>
                            <p>Để khám phá, tham quan du lịch tại Yên Bái vui lòng làm theo hướng dẫn dưới đây để chúng tôi
                                có thể liên lạc với bạn 1 cách nhanh nhất!</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 p-0">
                        <div class="service-item text-center">
                            <span class="count">1.</span>
                            <h4>Đăng ký</h4>
                            <p>Nếu bạn chưa có tài khoản bạn vui lòng nhấp vào nút đăng ký để tạo tài khoản.Nếu bạn đã có
                                tài khoản vui lòng chuyển sang bước 2.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 p-0">
                        <div class="service-item text-center">
                            <span class="count">2.</span>
                            <h4>Đăng nhập</h4>
                            <p>Nếu bạn đã có tài khoản, hãy đăng nhập rồi sau đó nhấp vào phần du lịch.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 p-0">
                        <div class="service-item text-center">
                            <span class="count">3.</span>
                            <h4>Du lịch</h4>
                            <p>Sau khi nhấp vào phần du lịch hãy chọn nơi mà bạn muốn đến.Sau khi đăng ký xong chúng tôi sẽ
                                gửi đến bạn thông báo qua tài khoản và số điện thoại của bạn sớm nhất. Chúc bạn có một
                                chuyến đi vui vẻ.
                            </p>
                        </div>
                    </div>
                </div> <!-- End row -->
            </div> <!-- End container -->
        </section> <!-- End section -->
        <%@include file ="components/footerComponent.jsp" %>
    </body>

</html>
