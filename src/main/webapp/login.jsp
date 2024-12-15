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
                        <h3>Welcome Back!</h3>
                        <p class="mb-0">Log in to your account</p>
                    </div>
                    <div class="card-body">
                        <form>
                            <!-- Email -->
                            <div class="mb-3">
                                <label for="email" class="form-label">Email Address</label>
                                <input type="email" class="form-control" id="email" placeholder="Enter your email" required>
                            </div>

                            <!-- Password -->
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" class="form-control" id="password" placeholder="Enter your password" required>
                            </div>

                            <!-- Remember Me Checkbox -->
                            <div class="mb-3 form-check">
                                <input type="checkbox" class="form-check-input" id="remember">
                                <label class="form-check-label" for="remember">Remember Me</label>
                            </div>

                            <!-- Login Button -->
                            <div class="d-grid">
                                <button type="submit" class="btn btn-primary">Log In</button>
                            </div>
                        </form>
                    </div>
                     <div class="card-footer text-center">
                                            <p class="mb-1">Forgot your password? <a href="#">Reset it here</a></p>
                                            <p class="mb-0">Don't have an account? <a href="signup.jsp">Sign Up</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
</body>

</html>

