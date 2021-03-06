<%-- 
    Document   : dangky
    Created on : Mar 3, 2022, 9:39:23 AM
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
        <div class="container mt-3">


            <div class="row">


                <div class="col-md-3 mb-5"><ul class="list-group">
                        <h3>Du l???ch Y??n B??i</h3>
                        <c:forEach items="${sessionScope.listGroupByGroupValue}" var = "g">
                            <li  class="list-group-item"><a href="filter-group?groupValue=${g.groupValue}">${g.groupName}</a></li>
                            </c:forEach>                      
                    </ul></div>
                <div class="col-md-9 ">
                    <h3>Th??ng tin chi ti???t  </h3>
                    <form action = "search"class="d-flex mx-auto">
                        <input type="hidden" name="groupId" value="${requestScope.groupId}">
                        <input class="form-control me-2"
                               type = "search"
                               placeholder="Search"
                               aria-label="Search"
                               name="keyword"/>
                        <button class="btn - btn-outline-success" type="submit">
                            Search
                        </button>
                    </form>


                    <table class="table table-bordered" style="font-size: 14px;">
                        <thead>
                            <tr>
                                <th>ID </th>
                                <th>Group</th>
                                <th>H??? v?? T??n</th>                              
                                <th>Gmail</th>
                                <th>Phone</th>
                                <th>B???ng gi??(VND)/1 ng?????i</th>
                                <th>Update/Delete</th>
                            </tr>
                        </thead>

                        <c:forEach items="${requestScope.listMember}" var = "M" >

                            <tbody>
                                <tr> 
                                    <td>${M.id}</td>
                                    <td>${M.groupValue}</td>
                                    <td>${M.memberName}</td>
                                    <td>${M.gmail}</td>
                                    <td>${M.phone}</td>                                   
                                    <td>${M.price}</td>
                                    <td>
                                        <c:if test="${sessionScope.account != null}">
                                            <c:if test="${sessionScope.account.id eq M.userId}">
                                                <a  style="padding: 5px; border-radius: 5px;" class="btn btn-outline-primary" href="UpdatePageController?detailsId=${M.id}&groupId=${requestScope.groupId}"> update <i class="bi bi-arrow-up-circle-fill"></i> </a>
                                                <a style="padding: 5px; border-radius: 5px;" class="btn btn-outline-danger" href="deleteMember?detailsId=${M.id}&groupId=${requestScope.groupId}" onclick="if (confirm('Delete selected item?')) {
                                                            return true;
                                                        } else {
                                                            event.stopPropagation();
                                                            event.preventDefault();
                                                        }
                                                        ;">delete <i class="bi bi-trash"></i></a> 
                                                </c:if>
                                            </c:if>
                                    </td>
                                </tr>
                            </tbody>
                        </c:forEach>

                    </table> 
                    <c:if test="${requestScope.ADDMEMBER_MSG != null}">
                        <p style="color: red">${requestScope.ADDMEMBER_MSG}</p>
                    </c:if>
                    <c:if test="${requestScope.DELETEMEMBER_MSG != null}">
                        <p style="color: red">${requestScope.DELETEMEMBER_MSG}</p>
                    </c:if>

                    <c:if test="${sessionScope.account.role ne 'ADMIN'}">
                        <a href="addMember?groupId=${requestScope.groupId}" type="button" style="margin-bottom: 10px" class="btn btn-success">????ng k?? chuy???n ??i</a>
                    </c:if>
                </div>
            </div>

        </div>
        <%@include file ="components/footerComponent.jsp" %>
    </body>
    <script>
        fuction showMess(memberId){
            var option = confirm('B???n ch???c ch???n mu???n x??a ch???');
            if (option === true) {
                window.location.href = 'deleteMember?memberId=' + memberId;
            }
        }
    </script>
</html>