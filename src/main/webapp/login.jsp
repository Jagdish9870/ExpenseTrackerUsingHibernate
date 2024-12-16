<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>ExpenseMaster</title>
    <%@include file="component/All_css.jsp"%>

  </head>
<body>

 <%@include file="component/navbar.jsp"%>
 <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow-lg">
                    <div class="card-header bg-success text-white text-center">
                        <h3>Welcome Back!</h3>
                        <p class="mb-0">Log in to your account</p>
                        <c:if test="${not empty msg}">
                                                <p class="text-center text-danger fs-4">${msg}</p>
                                                <c:remove var="msg"/></c:if>
                    </div>
                    <div class="card-body">
                        <form action="login" method="post">
                            <!-- Email -->
                            <div class="mb-3">
                                <label for="email" class="form-label">Email Address</label>
                                <input type="email" class="form-control" name="email" placeholder="Enter your email" required>
                            </div>

                            <!-- Password -->
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" name="password" placeholder="Enter your password" required>
                            </div>

                            <!-- Remember Me Checkbox -->
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" id="remember">
                                <label class="form-check-label" for="remember">Remember Me</label>
                            </div>

                            <!-- Login Button -->
                            <div class="d-grid">
                                <button type="submit" class="btn btn-success">Log In</button>
                            </div>
                        </form>
                    </div>
                     <div class="card-footer text-center">

                                            <p class="mb-0">Don't have an account? <a href="signup.jsp">Sign Up</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
</body>

</html>

