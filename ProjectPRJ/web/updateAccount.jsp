<%-- 
    Document   : insertAccount
    Created on : Mar 16, 2022, 8:09:44 AM
    Author     : Tran Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    </head>
    <body style="background-image: url(images/pexels-roberto-nickson-2775196.jpg)" >
        <%@include file="common/header.jsp" %>

        <section>
            <div class="container">

                <form class="row g-3" action="MainController" method="post">
                    <c:if test="${requestScope.UPDATE_MSG != null}">
                        <p>${requestScope.UPDATE_MSG}</p>
                    </c:if>
                    <div class="col-md-6">
                        <input type="hidden" name="txtuserid" value="${requestScope.ACCOUNT_DETAIL.id}">
                        <label for="inputEmail4" class="form-label ">Email</label>
                        <input type="email" name="txtemail" readonly="" value="${requestScope.ACCOUNT_DETAIL.email}" class="form-control" id="inputEmail4">
                        <c:if test="${requestScope.ACCOUNT_ERROR != null}">
                            <p style="color: red">${requestScope.ACCOUNT_ERROR.emailError}</p>
                        </c:if>
                    </div>
                    <div class="col-md-6">
                        <label for="inputPassword4" class="form-label ">Password</label>
                        <input type="password" readonly="" value="${requestScope.ACCOUNT_DETAIL.password}" name="txtpassword" class="form-control" id="inputPassword4">
                        <c:if test="${requestScope.ACCOUNT_ERROR != null}">
                            <p style="color: red">${requestScope.ACCOUNT_ERROR.passwordError}</p>
                        </c:if>
                    </div>
                    <div class="col-12">
                        <label class="form-label ">Full Name</label>
                        <input type="text" name="txtfullname" value="${requestScope.ACCOUNT_DETAIL.displayName}" class="form-control" id="inputPassword4">
                        <c:if test="${requestScope.ACCOUNT_ERROR != null}">
                            <p style="color: red">${requestScope.ACCOUNT_ERROR.displayNameError}</p>
                        </c:if>
                    </div>
                    <div class="col-12">
                        <label for="inputAddress" class="form-label text-white">Address</label>
                        <input type="text" name="txtaddress" value="${requestScope.ACCOUNT_DETAIL.address}" class="form-control" id="inputAddress" placeholder="1234 Main St">
                        <c:if test="${requestScope.ACCOUNT_ERROR != null}">
                            <p style="color: red">${requestScope.ACCOUNT_ERROR.addressError}</p>
                        </c:if>


                    </div>
                    <div class="col-12">
                        <label for="" class="form-label text-white">Phone</label>
                        <input type="tel" name="txtphone" value="${requestScope.ACCOUNT_DETAIL.phone}" class="form-control" id="inputAddress" placeholder="0123456789">
                        <c:if test="${requestScope.ACCOUNT_ERROR != null}">
                            <p style="color: red">${requestScope.ACCOUNT_ERROR.phoneError}</p>
                        </c:if>
                    </div>
                    <div class="col-12">
                        <label for="" class="form-label">Role</label>
                        <select id="role" name="txtrole" class="form-select">
                            <option selected="" value="${requestScope.ACCOUNT_DETAIL.role}">${requestScope.ACCOUNT_DETAIL.role}</option>
                            <!--<option value="admin">Admin</option>-->
                            <option value="user">User</option>
                        </select>
                    </div>



                    <div class="col-12">
                        <button type="submit" name="action" value="updateAdmin" class="btn btn-primary form-control">Update</button>
                    </div>
                </form>

            </div> 
        </section>



    </body>
</html>
