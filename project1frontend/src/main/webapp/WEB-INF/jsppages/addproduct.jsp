<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
       <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PRODUCT INSERT FORM</title>
</head>
<body>
<%--<div class="container">--%>
<form action="<c:url value='/admin/addproduct'></c:url>"method="get">
<table align="center" border="1" class="table table-sm">

<body>
<tr><td><b>PRODUCT NAME</td><td><input type="text" name="name" placeholder="  ENTER PRODUCT NAME" size="35"></td></tr>
<tr><td><b>PRODUCT DESCRIPTION</td><td><input type="text" name="description" placeholder="  ENTER PRODUCT DESCRIPTION" size="35"></td></tr>
<tr><td><b>PRODUCT QUANTITY</td><td><input type="text" name="quantity" placeholder="  ENTER PRODUCT QUANTITY" size="35"></td></tr>
<tr><td><b>PRODUCT PRICE</td><td><input type="text" name="price" placeholder="  ENTER PRODUCT PRICE" size="35"></td></tr>
<!-- <tr><td><b></td><td><input type="submit" value="ADD PRODUCT"></td> -->

</body>
</table>
</form>
</div>
</body>
</html>