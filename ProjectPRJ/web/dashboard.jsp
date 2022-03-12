<%-- 
    Document   : dashboard
    Created on : Mar 10, 2022, 9:30:31 PM
    Author     : FPTSHOP-ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${sessionScope.account == null}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        <c:if test="${sessionScope.account.role != 'ADMIN'}">
            <c:redirect url="home.jsp"></c:redirect>
        </c:if>
        <h1>DashBoard For Admin</h1>
    </body>
</html>
