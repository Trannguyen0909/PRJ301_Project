<%-- 
    Document   : header.jsp
    Created on : Mar 16, 2022, 7:53:09 AM
    Author     : Fang Long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="admin">ADMIN</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="Home">Home</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Profile
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="logout">Logout</a></li>
                                </ul>
                                <c:if test="${sessionScope.account != null}">
                                    <c:if test="${sessionScope.account.role eq 'USER'}">
                                        <c:redirect url="home.jsp"/>
                                    </c:if>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <li><a class="dropdown-item" href="logout">Logout</a></li>
                                    </ul>
                                </c:if>
                                <c:if test="${sessionScope.account == null}">
                                    <c:redirect url="login.jsp"/>
                                </c:if>
                            </li>

                        </ul>



                        <form class="d-flex" action="MainController"  >
                            <input name="keyword" class="form-control me-2" type="text" placeholder="Search" aria-label="Search" value="${param.keyword}">
                            <input class="btn btn-outline-success" type="submit" name="action" value="searchAdmin"></input>
                            <br>

                        </form>
                    </div>
                </div>
            </nav>
            <div class="">
                <hr>
            </div>
        </header>
    </body>
</html>
