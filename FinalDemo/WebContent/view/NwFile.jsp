<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Here</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/Login_Servlet" method="post">
	<table>
	<tr>
		<td><label>Email :</label></td>
		<td><input type="email" name="uname" required/></td>
	</tr>
	<tr>
		<td><label>Password :</label></td>
		<td><input type="password" name="password" required/></td>
	</tr>
	<tr>
	<td colspan="2">
	<br>
	<div align="center"><input type="submit" value="Login"></div>
	</td>
	</tr>
	</table>
</form>
