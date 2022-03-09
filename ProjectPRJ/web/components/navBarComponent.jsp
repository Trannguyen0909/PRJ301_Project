<%-- 
    Document   : navBar
    Created on : Mar 7, 2022, 11:02:57 PM
    Author     : FPTSHOP-ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="Home">Trang chủ</a></li>
                <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="food.jsp">Ẩm Thực</a></li>
                <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="travel">Du lịch</a></li>

                <c:choose>                       
                    <c:when test="${sessionScope.account==null}">
                        <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="login.jsp">Đăng nhập</a></li>
                        </c:when>
                        <c:otherwise>                      
                        <div  class="navbar-nav ms-auto py-4 py-lg-0 account-div">
                            <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4 text-light"  href="#">${sessionScope.account.displayName}
                                    <i class="bi bi-caret-down-fill me-1"></i></a></li>
                            <table class = "account-table" >
                                <tr>
                                    <td class="navbar-nav">                                 
                                <li class="nav-item"><a class="nav-link px-lg-3  text-light"  href="#" >Thông tin</a></li>
                                </td>
                                <td class="navbar-nav">                                 
                                <li class="nav-item"><a class="nav-link px-lg-3  text-light"  href="logout" >Đăng xuất</a></li>
                                </td>

                                </tr>

                            </table>


                        </div>

                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</nav>
<style>
    .account-div{
        position: relative;       
    }
    .account-table{
        display: none;
        position: absolute;
        top: 45px;
        width: 150px;

    }
    .account-div:hover .account-table{
        display: block;

    }
</style>