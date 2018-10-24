<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  img {
    max-width: 100%;
    height: auto;
}

p.title {
    font-family: "font-family", Cooper, serif;
}
  
  /* Images Hor Start */
  * {
    box-sizing: border-box;
}

.column {
    float: left;
    width: 30%;
    padding: 0px;
}

/* Clearfix (clear floats) */
.row::after {
    content: "";
    clear: both;
    display: table;
}
/* Images Hor End */
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: black;
   color: white;
   text-align: center;
}
.flip-box {
  background-color: transparent;
  width: 300px;
  height: 200px;
  border: 1px solid #f1f1f1;
  perspective: 1000px;
}

.flip-box-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
}

.flip-box:hover .flip-box-inner {
  transform: rotateY(180deg);
}

.flip-box-front, .flip-box-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

.flip-box-front {
  background-color: #bbb;
  color: black;
}

.flip-box-back {
  background-color: #555;
  color: white;
  transform: rotateY(180deg);
}

</style>
</head>
<body background="<c:url value='/resources/img/bg.jpg'></c:url>"  height=100% background-size= cover background-repeat= no-repeat background-position=center; >

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#"><img src="<c:url value='/resources/img/icon.png'></c:url>" alt="Shopshop" height="45px" width="100px"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">	
      <li class="active"><a href="<c:url value='/home'></c:url>"><span class="glyphicon glyphicon-home"></span> Home</a></li>
      <li><a href="<c:url value='/all/addproduct'></c:url>"> <span class="glyphicon glyphicon-plus"></span> Add Product</a>
      <li><a href="<c:url value='/all/getallproducts/'></c:url>"><span class="glyphicon glyphicon-search"></span> Browse All Product</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-pencil"></span> Select By Category
       <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#"> Kitchen and Dining</a></li>
		  <li><a href="#"> Furniture</a><li>
		  <li><a href="#"> All</a></li>
        </ul>
      </li>
      <li><a href="#"><span class="glyphicon glyphicon-registration-mark"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Sign In</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Sign Out</a></li>
    </ul>
    </div>
  </div>
</nav>
  


</body>
<div class="footer">
  <p>shopshop ©2018, shopshop.com</p>
</div>
</html>