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
                        <h3>Join Us Today!</h3>
                        <p class="mb-0">Create an account to get started</p>
                        <c:if test="${not empty msg}">
                        <p class="text-center text-success fs-4">${msg}</p>
                        <c:remove var="msg"/></c:if>


                    </div>
                    <div class="card-body">
                        <form action="userSignUp" method ="post">
                            <!-- Full Name -->
                            <div class="mb-3">
                                <label for="fullName" class="form-label">Full Name</label>
                                <input type="text" class="form-control" name="fullName" placeholder="Enter your full name" required>
                            </div>

                            <!-- Email -->
                            <div class="mb-3">
                                <label for="email" class="form-label">Email Address</label>
                                <input type="email" class="form-control" name="email" placeholder="Enter your email" required>
                            </div>

                            <!-- About -->
                            <div class="mb-3">
                                <label for="about" class="form-label">About</label>
                                <textarea class="form-control" name="about" rows="3" placeholder="Write a brief bio or description... (optional)"></textarea>
                            </div>

                            <!-- Password -->
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" name="password" placeholder="Create a strong password" required>
                            </div>
     <div class="mb-3">
                                    <label for="confirmPassword" class="form-label">Confirm Password</label>
                                    <input type="password" class="form-control" name="confirmPassword" placeholder="Re-enter your password" required>
                                </div>

                                <!-- Terms and Conditions -->
                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" name="terms" required>
                                    <label class="form-check-label" for="terms">
                                        I agree to the <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a>
                                    </label>
                                </div>

                                <!-- Signup Button -->
                                <div class="d-grid">
                                    <button type="submit" class="btn btn-success">Sign Up</button>
                                </div>
                            </form>
                        </div>

                        <div class="card-footer text-center">
                            <p class="mb-0">Already have an account? <a href="login.jsp">Log In</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</body>

</html>

