<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'></c:url>"/>

<!-- jQuery library -->
<script src="<c:url value='/resources/js/bootstrap.min.js'></c:url>"></script>
<script src="<c:url value='/resources/js/jquery.min.js'></c:url>"></script>
<script src="<c:url value='/resources/js/jquery-2.2.1.min.js'></c:url>"></script>
<script src="<c:url value='/resources/js/jquery.dataTables.min.js'></c:url>"></script>
<link rel="stylesheet" href="<c:url value='/resources/css/jquery.dataTables.min.css'></c:url>"/>
<!-- Latest compiled JavaScript -->
<script src="<c:url value='/resources/js/bootstrap.min.js'></c:url>"></script>
<link rel="stylesheet" href="<c:url value='/resources/css/navbar.css'></c:url>"/>
<link rel="stylesheet" href="<c:url value='/resources/css/home.css'></c:url>">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
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
<body background="<c:url value='/resources/img/bg.jpg'></c:url>">
<div class="container-container">
<nav class="navbar navbar-inverse" id="navbar-bg">
<div class="navbar-header">
				<a href="" class="navbar-brand"><img src="<c:url value='/resources/img/icon.png'></c:url>" alt="ShopShop" height="30px" width="70px"></a>
				<button type="button" class="navbar-toggle collapsed" 
   data-toggle="collapse" data-target="#navbardemo" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
</div>
<div class="collapse navbar-collapse" id="navbardemo">
<ul class="nav navbar-nav">
<li><a href="<c:url value='/home'></c:url>"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>
<security:authorize access="hasRole('ROLE_ADMIN')">
<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-plus"></span>&nbsp;Add<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="<c:url value='/admin/getproductform'></c:url>"><span class="glyphicon glyphicon-plus"></span>&nbsp;Add Product</a></li>
<li><a href="<c:url value='/admin/getcategoryform'></c:url>"><span class="glyphicon glyphicon-plus"></span>&nbsp;Add Category</a></li>
</ul>
</li>
</security:authorize>
<!-- <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Add<span class="caret"></span></a>
<ul class="dropdown-menu"> -->
<li><a href="<c:url value='/all/getallproducts/'></c:url>"><span class="glyphicon glyphicon-search"></span>&nbsp;Browse All Products</a></li>
<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Select By Category<span class="caret"></span></a>
					
				<ul class="dropdown-menu">
				<c:forEach items="${categories}" var="c">
				<li><a href="<c:url value='/all/searchByCategory?searchCondition=${c.categoryname}'></c:url>">${c.categoryname}</a></li>
				</c:forEach>
				</ul>
</li>
<security:authorize access="hasRole('ROLE_USER')">
<li><a href="<c:url value='/cart/getcart'></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span>&nbsp;${count}</a></li>
</security:authorize>
</ul>
<ul class="nav navbar-nav navbar-right">
<c:if test="${pageContext.request.userPrincipal.name == null}">
<li><a href="<c:url value='/all/getregistrationform'></c:url>"><span class="glyphicon glyphicon-registration-mark"></span>&nbsp;Sign Up</a></li>
<li><a href="<c:url value='/login'></c:url>"><span class="glyphicon glyphicon-log-in"></span>&nbsp;Sign In</a></li>	
</c:if>
<c:if test="${pageContext.request.userPrincipal.name != null}">
<li><a href="#">WELCOME ${pageContext.request.userPrincipal.name}</a></li>
<li><a href="<c:url value='/j_spring_security_logout'></c:url>"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Sign Out</a></li>		
</c:if>
</ul>
</div>
</nav>

</div>
</body>
<div class="footer">
  <p>shopshop �2018, shopshop.com</p>
</div>
</html>