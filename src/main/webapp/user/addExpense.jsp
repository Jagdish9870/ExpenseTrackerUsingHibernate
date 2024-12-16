<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP Page Example</title>
    <%@include file="../component/All_css.jsp"%>
     <style>
            body {
                background-color: #f8f9fa;
                font-family: Arial, sans-serif;
            }
            .form-container {
                max-width: 500px;
                margin: 50px auto;
                background-color: #fff;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }
            .btn-green {
                background-color: #28a745;
                color: white;
            }
            .btn-green:hover {
                background-color: #218838;
            }
            .form-control:focus {
                box-shadow: 0 0 5px rgba(40, 167, 69, 0.5);
                border-color: #28a745;
            }
            .card-sh{
            box-shadow: 0 0 6px 0 rgba(0,0,0,0.4)
            }
        </style>

  </head>
<body class="bg-light">
<%@include file="../component/navbar.jsp"%>
   <c:if test="${empty loginUser}">
   <c:redirect url="../login.jsp"></c:redirect>
</c:if>



    <div class="form-container card-sh">
        <h3 class="text-center mb-4 ">Add Expense</h3>
        <c:if test="${not empty msg}">
         <p class="text-center text-success fs-4">${msg}</p>
         <c:remove var="msg"/></c:if>
        <form action="../saveExpense" method="post">
            <!-- Title -->
            <div class="mb-3">
                <label for="title" class="form-label fw-bold">Title</label>
                <input type="text" class="form-control" name="title" placeholder="Enter title" required>
            </div>
            <!-- Date -->
            <div class="mb-3">
                <label for="date" class="form-label fw-bold">Date</label>
                <div class="input-group">
                    <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
                    <input type="date" class="form-control" name="date" required>
                </div>
            </div>
            <!-- Time -->
            <div class="mb-3">
                <label for="time" class="form-label fw-bold">Time</label>
                <div class="input-group">
                    <span class="input-group-text"><i class="fas fa-clock"></i></span>
                    <input type="time" class="form-control" name="time" required>
                </div>
            </div>
            <!-- Description -->
            <div class="mb-3">
                <label for="description" class="form-label fw-bold">Description</label>
                <textarea class="form-control" name="description" rows="3" placeholder="Enter description"></textarea>
            </div>
            <!-- Price -->
            <div class="mb-3">
                <label for="price" class="form-label fw-bold">Price</label>
                <input type="number" class="form-control" name="price" placeholder="Enter amount" min="0" required>
            </div>
            <!-- Submit Button -->
            <div class="d-grid">
                <button type="submit" class="btn btn-green">Add</button>
            </div>
        </form>
    </div>
</body>

</html>

