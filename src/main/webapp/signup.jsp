<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP Page Example</title>
    <%@include file="component/All_css.jsp"%>

  </head>
<body>

 <%@include file="component/navbar.jsp"%>

<div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow-lg">
                    <div class="card-header bg-primary text-white text-center">
                        <h3>Join Us Today!</h3>
                        <p class="mb-0">Create an account to get started</p>
                    </div>
                    <div class="card-body">
                        <form>
                            <!-- Full Name -->
                            <div class="mb-3">
                                <label for="fullName" class="form-label">Full Name</label>
                                <input type="text" class="form-control" id="fullName" placeholder="Enter your full name" required>
                            </div>

                            <!-- Email -->
                            <div class="mb-3">
                                <label for="email" class="form-label">Email Address</label>
                                <input type="email" class="form-control" id="email" placeholder="Enter your email" required>
                            </div>

                            <!-- About -->
                            <div class="mb-3">
                                <label for="about" class="form-label">About</label>
                                <textarea class="form-control" id="about" rows="3" placeholder="Write a brief bio or description... (optional)"></textarea>
                            </div>

                            <!-- Password -->
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" placeholder="Create a strong password" required>
                            </div>
     <div class="mb-3">
                                    <label for="confirmPassword" class="form-label">Confirm Password</label>
                                    <input type="password" class="form-control" id="confirmPassword" placeholder="Re-enter your password" required>
                                </div>

                                <!-- Terms and Conditions -->
                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="terms" required>
                                    <label class="form-check-label" for="terms">
                                        I agree to the <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a>
                                    </label>
                                </div>

                                <!-- Signup Button -->
                                <div class="d-grid">
                                    <button type="submit" class="btn btn-primary">Sign Up</button>
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

