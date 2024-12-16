<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import ="com.jack.conn.HibernateUtil"%>
<%@page import ="org.hibernate.SessionFactory"%>
<%@page import ="com.jack.Dao.ExpenseDao"%>
<%@page import ="com.jack.Entity.User"%>
<%@page import ="com.jack.Entity.Expenses"%>
<%@ page import="java.util.List" %>
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
            .container {
                margin-top: 50px;
            }
            .table-container {
                background-color: #ffffff;
                border-radius: 8px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                padding: 20px;
            }
            .btn-green {
                background-color: #28a745;
                color: white;
            }
            .btn-green:hover {
                background-color: #218838;
            }
        </style>
  </head>
<body>
<%@include file="../component/navbar.jsp"%>

   <c:if test="${empty loginUser}">
   <c:redirect url="../login.jsp"></c:redirect>
</c:if>
<div class="container">
    <!-- Title -->
    <div class="text-center mb-4">
        <h2>My Expenses</h2>
        <c:if test="${not empty msg}">
                 <p class="text-center text-success fs-4">${msg}</p>
                 <c:remove var="msg"/></c:if>
        <p class="text-muted">View and manage your recorded expenses</p>
    </div>

    <!-- Expense Table -->
    <div class="table-container">
        <table class="table table-bordered table-striped text-center">
            <thead class="table-success">
                <tr>
                    <th scope="col">Title</th>
                    <th scope="col">Date</th>
                    <th scope="col">Time</th>
                    <th scope="col">Description</th>
                    <th scope="col">Price</th>
                    <th scope="col">Actions</th>
                </tr>
            </thead>
            <tbody>

                <!-- Add more rows dynamically here -->
                <%
                   User user=(User)session.getAttribute("loginUser");

                 ExpenseDao exDao=new ExpenseDao(HibernateUtil.getSessionfactory());
                 List<Expenses> list=exDao.getAllExpenses(user);
                 for(Expenses ex : list){
                 %>

                <tr>
                    <th scope="row" ><%=ex.getTitle()%></th>
                     <td><%=ex.getDate()%></td>
                    <td><%=ex.getTime()%></td>
                    <td><%=ex.getDescription()%></td>
                   <td><%=ex.getPrice()%></td>
                    <td>
                         <a href="editExpense.jsp?id=<%=ex.getId()%>" class="btn btn-sm btn-warning me-2">
                          <i class="fas fa-edit"></i> Edit
                         </a>
                         <a href="#" class="btn btn-sm btn-danger">
                         <i class="fas fa-trash-alt"></i> Delete
                         </a>
                    </td>
                </tr>
                 <%
                 }
                %>
            </tbody>
        </table>
    </div>
</div>


</body>

</html>

