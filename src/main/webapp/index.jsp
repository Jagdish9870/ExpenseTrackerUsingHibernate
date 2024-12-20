<%@page import ="com.jack.conn.HibernateUtil"%>
<%@page import ="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>ExpenseMaster</title>
    <%@include file="component/All_css.jsp"%>
  </head>
<body>
 <%@include file="component/navbar.jsp"%>
 <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
   <div class="carousel-indicators">
     <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
     <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
   </div>
   <div class="carousel-inner">
     <div class="carousel-item active" data-bs-interval="10000">
       <img src="img/img3.jpg" class="d-block w-100" alt="..." height="650px">
       <div class="carousel-caption d-none d-md-block">
         <h5>ExpenseMaster</h5>
          <p>Your ultimate solution to managing personal and professional expenses effortlessly</p>
       </div>
     </div>
     <div class="carousel-item" data-bs-interval="2000">
       <img src="img/img2.jpeg" class="d-block w-100" alt="..." height="650px">
       <div class="carousel-caption d-none d-md-block">
        <h5>Key Features</h5>
        <p>Features like real-time updates, visual spending insights, record daily expenses, or analyzing spending.</p>
       </div>
     </div>
   </div>
   <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
     <span class="carousel-control-prev-icon" aria-hidden="true"></span>
     <span class="visually-hidden">Previous</span>
   </button>
   <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
     <span class="carousel-control-next-icon" aria-hidden="true"></span>
     <span class="visually-hidden">Next</span>
   </button>
 </div>
  <%@include file="component/footer.jsp"%>
</body>

</html>

