<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body style="background-image: url('https://i2.wp.com/goldwallpapers.com/uploads/posts/plain-white-wallpaper/plain_white_wallpaper_026.jpg?resize=820%2C461');">
<div align="center" class="container">
<H2>Welcome <c:out value="${sessionScope.name}" ></c:out> </H2> 
	<input type="button" class="btn btn-info" value="Edit Profile" onclick="location.href = '<%=request.getContextPath() %>/EditProfile';">
	<input type="button" class="btn btn-info" value="LogOut" onclick="location.href = '<%=request.getContextPath() %>/logout';">
</div>

<table border=1 class="table">
	<caption>All Your Tasks</caption>
	<thead>
	<th>Task Name</th>
	<th>Date and Time</th>
	<th>Remove Task</th>
	</thead>
	<tbody>
 	<c:forEach items="${list}" var="arr">
		<tr>
			<td>${arr.name}</td>
			<td>${arr.time}</td>
			<td><a href="<%=request.getContextPath()%>${'/DeleteTask?id='}${arr.id}">Remove</a></td>
		</tr>
	</c:forEach>
	</tbody>
</table>
<br>
<a class="btn btn-Success" href="<%=request.getContextPath() %>/view/AddTask.jsp">Add Task</a>
</body>
</html>