<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
<!DOCTYPE>
<html> 
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head> 
<body>  
<form action="<%=request.getContextPath() %>/Register_Servlet" method ="post">

	<table class="table">
		<tr>
			<td><label>FirstName :</label></td>
			<td><input type="text" name="fname" required="required"/></td>
		</tr>
		<tr>
			<td><label>LastName :</label></td>
			<td><input type="text" name="lname" required="required"/></td>
		</tr>
		<tr>
			<td><label>Address :</label></td>
			<td><input type="text" name="address" required="required"/></td>
		</tr>
		<tr>
			<td><label>Enter Email :</label></td>
			<td><input type="email" name = email required="required"></td>
		</tr>
		
		<tr>
			<td><label>Password :</label></td>
			<td><input type="password" name = password required="required"></td>
		</tr>
		<tr>
			<td><label>Confirm Password :</label></td>
			<td><input type="password" name = cpassword required="required"></td>
		</tr>
		<tr>
		<td><label>Your Gender :</label></td>
		<td>
			<input type="radio" name ="gender" id="m" value="1"/>
			<label for="m">Male</label>
			<input type="radio" name ="gender" id="f" value="0"/>
			<label for="f">Female</label>
		</td>
		</tr>
		<tr>
		<td><label>Select Country :</label></td>
			<td>
			<select name="Country">
			<option value ="india"> India</option>
			<option value ="pakistan"> Pakistan</option>
			<option value ="china"> China</option>
			<option value ="africa"> Africa</option>
			</select>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<br>
			<div align="center"><input type="submit" value="Register"></div>
			</td>
		</tr>
	</table>
</form>
</body>  
</html>  
