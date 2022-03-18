<%-- 
    Document   : insertAccount
    Created on : Mar 16, 2022, 8:09:44 AM
    Author     : Fang Long
--%>

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
    <body style="background-image: url(images/pexels-roberto-nickson-2775196.jpg)" >
        <%@include file="common/header.jsp" %>

        <section>
            <div class="container">

                <c:if test="${requestScope.INSERT_MSG != null}">

                    <p>${requestScope.INSERT_MSG}</p>
                </c:if>


                <form class="row g-3" action="MainController" method="post">
                    <div class="col-md-6">
                        <label for="" class="form-label">Email</label>
                        <input type="email" name="txtemail" class="form-control" id="">
                        <c:if test="${requestScope.ACCOUNT_ERROR != null}">
                            <p style="color: red">${requestScope.ACCOUNT_ERROR.emailError}</p>
                        </c:if>
                    </div>
                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label ">Password</label>
                        <input type="password" name="txtpassword" class="form-control" id="inputPassword4">
                        <c:if test="${requestScope.ACCOUNT_ERROR != null}">
                            <p style="color: red">${requestScope.ACCOUNT_ERROR.passwordError}</p>
                        </c:if>
                    </div>
                    <div class="col-12">
                        <label class="form-label ">Full Name</label>
                        <input type="text" name="txtfullname" class="form-control" id="inputPassword4">
                        <c:if test="${requestScope.ACCOUNT_ERROR != null}">
                            <p style="color: red">${requestScope.ACCOUNT_ERROR.displayNameError}</p>
                        </c:if>
                    </div>
                    <div class="col-12">
                        <label for="inputAddress" class="form-label ">Address</label>
                        <input type="text" name="txtaddress" class="form-control" id="inputAddress" placeholder="1234 Main St">
                        <c:if test="${requestScope.ACCOUNT_ERROR != null}">
                            <p style="color: red">${requestScope.ACCOUNT_ERROR.addressError}</p>
                        </c:if>


                    </div>
                    <div class="col-12">
                        <label for="" class="form-label ">Phone</label>
                        <input type="tel" name="txtphone" class="form-control" id="inputAddress" placeholder="0123456789">
                        <c:if test="${requestScope.ACCOUNT_ERROR != null}">
                            <p style="color: red">${requestScope.ACCOUNT_ERROR.phoneError}</p>
                        </c:if>
                    </div>
                    <div class="col-12">
                        <label for="" class="form-label ">Role</label>
                        <select id="role" name="txtrole" class="form-select">
                            <option value="admin">Admin</option>
                            <option selected value="user">User</option>
                        </select>
                    </div>



                    <div class="col-12">
                        <button type="submit" name="action" value="insertAdmin" class="btn btn-primary form-control">Insert</button>
                    </div>
                </form>

            </div> 
        </section>



    </body>
</html>
