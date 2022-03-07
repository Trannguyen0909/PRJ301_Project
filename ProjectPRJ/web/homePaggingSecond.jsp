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
                        <h2 style="color: #31BB9E;">Trạm tấu</h2>
                        <p>Cách trung tâm thành phố Yên Bái khoảng 100 km, đến với huyện Trạm Tấu du khách sẽ được hòa
                            mình vào thiên nhiên hoang sơ, núi rừng hùng vĩ khám phá những điều mới lạ từ thiên nhiên và
                            nền văn hóa đặc trưng của đồng bào dân tộc Mông, dân tộc Thái. Đặc biệt, du khách được trải
                            nghiệm các hoạt động du lịch mạo hiểm, cộng đồng, nghỉ dưỡng...</p>
                        <a href="#" class="btn btn-main">Tìm Hiểu Thêm</a>
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div id="myDiv">
                        <img src="images/tramtau.jpg" style="width: 120%; height: 120%; border-radius: 50px;"
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
                        <img src="images/mucangchai.jpg"
                            style="width: 105%; margin-right: 100%; border-radius: 50px;" alt="">
                    </div>
                </div>
                <div class="col-12 col-md-6 align-self-center mb-4 mb-md-0 px-5 ">
                    <div class="align-self-center">
                        <h2 class="text-center" style="color: #31BB9E;">Mù cang chải</h2>
                        <p>Trong những năm gần đây, năm nào cũng vậy, cứ vào khoảng cuối tháng 9, đầu tháng 10 hàng năm,
                            du khách khắp mọi miền tổ quốc đều đổ về Mù Cang Chải để chiêm ngưỡng khung cảnh đẹp tuyệt
                            vời của mảnh đất vùng cao này. Đến với nơi đây, du khách không chỉ được thưởng ngoạn vẻ đẹp
                            của những thửa ruộng bậc thang, những biển mây trắng trên đỉnh đèo Cao Phạ mà còn được đắm
                            mình vào những lễ hội văn hóa độc đáo của đồng bào Mông...</p>
                        <a href="#" class="btn btn-main" style="margin-left: 35%;">Tìm Hiểu Thêm</a>
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
                        <h2 style="color: #31BB9E;">Nghĩa Lộ</h2>
                        <p>Nghĩa Lộ là một thị xã tọa lạc ở phía Tây của tỉnh Yên Bái, cách trung tâm thành phố khoảng
                            84km. Du lịch Nghĩa Lộ bạn sẽ được khám phá nền văn hóa đặc sắc của dân tộc Thái, các bản
                            làng truyền thống và nền ẩm thực độc đáo. Nghĩa Lộ có khí hậu đặc
                            trưng vùng Tây Bắc, mùa hè mát mẻ mưa nhiều và mùa đông khô, lạnh. Vì vậy, thời điểm đẹp
                            nhất du lịch Nghĩa Lộ Yên Bái là vào tháng 9, thời gian này cũng diễn ra Tuần văn hóa lễ hội
                            Mường Lò với lễ hội ruộng bậc thang Mù Cang Chải. Nếu tới Nghĩa Lộ vào tầm tháng 2 hoặc
                            tháng 3 bạn sẽ được tham gia những lễ hội của người dân địa phương và khám phá nền văn hóa
                            của dân tộc vùng cao...</p>
                        <a href="#" class="btn btn-main">Tìm Hiểu Thêm</a>
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div id="myDiv">
                        <img src="images/nghialo.jpg" style="width: 110%; border-radius: 50px;" alt="">
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
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
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
