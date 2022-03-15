
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
    <body>
        <h1>Home For Admin</h1>


        <c:if test="${sessionScope.account != null}">
            <c:if test="${sessionScope.account eq 'USER'}">
                <c:redirect url="home.jsp"/>
            </c:if>
        </c:if>

        <c:if test="${sessionScope.account == null}">
            <c:redirect url="login.jsp"/>
        </c:if>


        <div class="container">
            <h2>Manager User</h2>

            <div class="col-md-auto">
                <!-- On tables -->
                <table class="table table-dark table-striped table-hover">
                    <caption>List of users</caption>
                    <thead>
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
                                    <a href="#" class="btn btn-danger">Delete</a>
                                    <a href="#" class="btn btn-primary">Update</a>

                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>



    </body>
</html>
