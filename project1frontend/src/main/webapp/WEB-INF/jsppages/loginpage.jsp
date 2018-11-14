<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginPage</title>
</head>
<body>
<div class="container">
<font color="white">
</font>
<br>
<form action="<c:url value='/j_spring_security_check'></c:url>" method="post">
<h2 style="color:#CECECE" align="center" ><b>Login Page</b></h2>
<table class="table table">
<tr><td>EMAIL_ID</td><td><input type="text" name="j_username"></td>
<tr><td>PASSWORD</td><td><input type="password" name="j_password"></td>
<tr><td></td><td><input type="submit" value="LOGIN"/></td></tr>
<tr><td></td><td><b>  <span style="color:red">${loginError}</span></b> </td></tr>
</table>
</form>
<font color="white">
${message}
</font>
</div>
</body>
</html>