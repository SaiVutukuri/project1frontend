<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
 #myVideo {
    position: fixed;
  top: 50%;
  left: 50%;
  min-width: 100%;
  min-height: 100%;
  width: auto;
  height: auto;
  z-index: -100;
  transform: translate(-50%, -50%);;
} 

</style> 

  
</head>
<body>

<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="<c:url value='/resources/img/sh.jpg'></c:url>" alt="Banner1" style="width:100%;">
      </div>
      <div class="item">
        <img src="<c:url value='/resources/img/c1.jpg'></c:url>" alt="Banner2" style="width:100%;">
      </div>
       <div class="item">
        <img src="<c:url value='/resources/img/s1.jpg'></c:url>" alt="Banner3" style="width:100%;">
      </div>
       <div class="item">
        <img src="<c:url value='/resources/img/s2.jpg'></c:url>" alt="Banner4" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br>
<div align="center">

<div  class="row">
<div class="column">
<div class="flip-box">
  <div class="flip-box-inner">
    <div class="flip-box-front">
   
      <img src="<c:url value='/resources/img/i1.jpg'></c:url>" alt="Offer1" style="width:300px;height:200px">
    </div>
    <div class="flip-box-back">
      <h2>Hot Deals</h2>
      <p>Amazing Offers On <br><b> Axis Bank </b><br>10% to 45% Offers</p>
    </div>
  </div>
</div>
</div>
<div class="column">
<div class="flip-box">
  <div class="flip-box-inner">
    <div class="flip-box-front">
      <img src="<c:url value='/resources/img/i2.jpg'></c:url>" alt="Offer2" style="width:300px;height:200px">
    </div>
    <div class="flip-box-back">
      <h2>All Offers</h2>
      <p>5% To 15% Deals <br> On All Banks</p>
    </div>
  </div>
</div>
</div>
<div class="column">
<div class="flip-box">
  <div class="flip-box-inner">
    <div class="flip-box-front">
      <img src="<c:url value='/resources/img/i3.jpg'></c:url>" alt="Offer3" style="width:300px;height:200px">
    </div>
    <div class="flip-box-back">
      <h2>First Time</h2>
      <p>20% Offers <br> On All Banks</p>
    </div>
  </div>
</div>
</div>
</div>
</div>
<br>
<br>
<br>
<hr>

<img alt="Today Offer" src="<c:url value='/resources/img/fa.jpg'></c:url>" width=100%>
<hr>
<br>
 <img alt="Today Offer" src="<c:url value='/resources/img/bigimg.PNG'></c:url>" width=100%>
<hr>



<video autoplay muted loop id="myVideo">
  <source src="<c:url value='/resources/img/video.mp4'></c:url>" type="video/mp4">
</video>
</body>
</html>