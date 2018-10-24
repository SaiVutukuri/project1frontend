<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Of Products</title>
</head>
<body>

<table align="center" class="table table-bordered">
<caption><h1><center><font color="white"><p class="title">LIST OF PRODUCTS</p></font></center></h1></caption>
<thead>

<tr><th><font color="#FFFF66">PRODUCT ID</font></th><th><font color="#FFFF66">PRODUCT NAME</font></th><th><font color="#FFFF66">PRODUCT DESCRIPTION</font></th><th><font color="#FFFF66"><b>PRODUCT QUANTITY</b></font></th><th><font color="#FFFF66">PRODUCT PRICE</font></th><th><font color="#FFFF66">ACTION</font></th></tr></thead>

<tbody>
<c:forEach items="${product}" var="p">
<tr><td><font color="#1E90FF"><c:out value="${p.id}"></c:out></font></td><td><font color="#1E90FF"><c:out value="${p.productname}"></c:out></font></td><td><font color="#1E90FF"><c:out value="${p.productdesc}"></c:out></font></td><td><font color="#1E90FF"><c:out value="${p.quantity}"></c:out></font></td><td><font color="#1E90FF"><c:out value="${p.price}"></c:out></font></td>
<td>
<a href="<c:url value='/all/getproducts?id=${p.id}'></c:url>"><span class="glyphicon glyphicon-info-sign"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="<c:url value='/all/deleteproduct?id=${p.id}'></c:url>"><span class="glyphicon glyphicon-trash"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href=""><span class="glyphicon glyphicon-pencil"></span></a>
</td>
</tr>
</c:forEach>
</tbody>
</table>

</body>
</html>