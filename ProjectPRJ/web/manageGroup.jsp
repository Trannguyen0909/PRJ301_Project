
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
    <body class="bg-body" style="background-image: url(images/anhnendashboard.jpg); width: 100%;">

        <header>
            <%@include file="common/header.jsp" %>
        </header>

        <div class="container">
            <h2>Manager User</h2>

            <div class="col-md-auto">
                <!-- On tables -->
                <table class="table table-dark table-striped table-hover">
                    <caption style="color: #ffffff">List of Groups</caption>
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
                                <a href="MainController?action=insertGroupAdminPage" 
                                   class="btn btn-primary">ADD Group</a>
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
                            <th scope="col">groupValue</th>
                            <th scope="col">groupName</th>
                            <th scope="col">from_date</th>
                            <th scope="col">to_date</th>
                            <th scope="col">quantity</th>
                            <th scope="col">price</th>
                            <th scope="col">status</th>
                            <th scope="col">ACTION</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="g" items="${requestScope.listGroups}">

                            <tr>
                                <td>${g.id}</td>
                                <td>${g.groupValue}</td>
                                <td>${g.groupName}</td>
                                <td>${g.from_date}</td>
                                <td>${g.to_date}</td>
                                <td>${g.quantity}</td>
                                <td>${g.price}</td>
                                <td>${g.status}</td>
                                <td>
                                    <c:if test="${g.status eq 'True'}">
                                        <a href="MainController?action=updateGroupStatus&groupid=${g.id}&status=false" class="btn btn-danger">Delete</a>
                                    </c:if>
                                    <c:if test="${g.status eq 'False'}">
                                        <a href="MainController?action=updateGroupStatus&groupid=${g.id}&status=true" class="btn btn-primary">Active</a>
                                    </c:if>
                                    <a href="MainController?action=updateAdminPage&userid=${g.id}" class="btn btn-success">Update</a>

                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <div class="text-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <c:forEach begin="1" end="${requestScope.totalPage}" var="i">   
                                <li class="page-item ${i==page?"active":""}"><a class="page-link" href="MainController?action=searchGroup&keyword=&page=${i}">${i}</a></li>
                                </c:forEach>
                        </ul>
                    </nav>
                </div>


            </div>



        </div>

    </body>
</html>
