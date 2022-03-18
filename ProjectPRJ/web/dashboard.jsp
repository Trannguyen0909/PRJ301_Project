
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    </head>
    <body class="bg-body" style="background-image: url(images/anhnendashboard.jpg); width: 100%; ">

        <header>
            <%@include file="common/header.jsp" %>
        </header>

        <div class="container">
            <h2>Manager User</h2>

            <div class="col-md-auto">
                <!-- On tables -->
                <table style="font-size: 15px;" class="table table-dark table-striped table-hover">
                    <caption style="font-size: 25px; color: #ffffff;">List of users</caption>
                    <c:if test="${requestScope.INSERT_MSG != null}">
                        <p>${requestScope.INSERT_MSG}</p>
                    </c:if>
                    <c:if test="${requestScope.UPDATE_MSG != null}">
                        <p>${requestScope.UPDATE_MSG}</p>
                    </c:if>
                    <c:if test="${requestScope.DELETE_MSG != null}">
                        <p>${requestScope.DELETE_MSG}</p>
                    </c:if>


                    <thead>
                        <tr>
                            <th>
                            <td>
                                <a href="MainController?action=insertAdminPage" 
                                   class="btn btn-primary">ADD USER</a>
                            </td>
                            </th>
                            <th>
                            <td class="">

                            </td>
                            </th>
                            <th><c:if test="${requestScope.SEARCH_ADMIN_MSG != null}">
                                    <p class="text-danger">${requestScope.SEARCH_ADMIN_MSG}</p>
                                </c:if></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>


                        </tr>
                        <tr>
                            <th scope="col">id</th>
                            <th scope="col">username</th>
                            <th scope="col">displayName</th>
                            <th scope="col">address</th>
                            <th scope="col">email</th>
                            <th scope="col">phone</th>
                            <th scope="col">role</th>
                            <th scope="col">status</th>
                            <th scope="col">ACTION</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="a" items="${requestScope.LIST_ACCOUNT}">

                            <tr>
                                <td>${a.id}</td>
                                <td>${a.username}</td>
                                <td>${a.displayName}</td>
                                <td>${a.address}</td>
                                <td>${a.email}</td>
                                <td>${a.phone}</td>
                                <td>${a.role}</td>
                                <td>${a.status}</td>
                                <td>
                                    <c:if test="${a.status eq 'True'}">
                                        <a href="MainController?action=deleteAdmin&userid=${a.id}" class="btn btn-danger">Lock Account</a>
                                    </c:if>
                                    <c:if test="${a.status eq 'False'}">
                                        <a href="MainController?action=activeAdmin&userid=${a.id}" class="btn btn-primary">Active</a>
                                    </c:if>
                                    <a href="MainController?action=updateAdminPage&userid=${a.id}" class="btn btn-success">Update</a>

                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="text-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <c:forEach begin="1" end="${requestScope.totalPage}" var="i">   
                                <li class="page-item ${i==page?"active":""}"><a class="page-link" href="MainController?action=searchAdmin&keyword=&page=${i}">${i}</a></li>
                                </c:forEach>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

    </body>
</html>
