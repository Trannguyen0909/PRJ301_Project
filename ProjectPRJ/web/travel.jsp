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
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link
            href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
            rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <%@include file ="components/navBarComponent.jsp" %>        <!-- Page Header-->
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
                        <c:forEach items="${sessionScope.listGroupByGroupValue}" var = "g">
                            <li  class="list-group-item"><a href="filter-group?groupValue=${g.groupValue}">${g.groupName}</a></li>
                            </c:forEach>                       
                    </ul> </div>
                <div class="col-md-9 ">
                    <h3>Lịch đi và cập nhật địa điểm du lịch Yên Bái </h3>
                    <table class="table table-bordered" style="font-size: 16px">
                        <thead>
                            <tr>
                                <th>ID </th>
                                <th>Điểm Đến</th>
                                <th>Ngày Đi</th>
                                <th>Ngày Về</th>
                                <th>Số người đã đăng ký</th>
                                <th>Bảng giá(VND)/Nhóm</th>
                                <th>Tìm hiểu thêm</th>
                            </tr>
                        </thead>
                        <c:forEach items="${listGroupDetails}" var = "L" >

                            <tbody>
                                <tr>
                                    <td>${L.id}</td>
                                    <td>${L.groupName}</td>
                                    <td>${L.from_date}</td>
                                    <td>${L.to_date}</td>
                                    <td>${L.quantity}</td>
                                    <td>${L.price}</td>
                                    <td><a href="detail?groupId=${L.id}" type="submit" style="text-decoration: none; box-shadow: 0 3px black; ">Thông tin chi tiết</a></td>
                                </tr>
                            </tbody>

                        </c:forEach>


                    </table>
                    <nav aria-label="..." class="d-flex justify-content-center">

                        <ul class="pagination pagination-sm">
                           <c:if test="${requestScope.totalPageGroup == null}">
                                <c:forEach begin="1" end="${requestScope.totalPage}" var="i">    

                                    <li class="page-item ${i==page?"active":""}"><a class="page-link" href="travel?page=${i}">${i}</a></li>

                                </c:forEach> 
                            </c:if>
                            <c:if test="${requestScope.totalPageGroup != null}">
                                <c:forEach begin="1" end="${requestScope.totalPageGroup}" var="i">    

                                    <li class="page-item ${i==pageGroup?"active":""}"><a class="page-link" href="filter-group?groupValue=${requestScope.groupValue}&pageGroup=${i}">${i}</a></li>

                                </c:forEach> 
                            </c:if>
                        </ul>
                    </nav>
                </div>
            </div>

        </div>
        <%@include file ="components/footerComponent.jsp" %>
    </body>
</html>
