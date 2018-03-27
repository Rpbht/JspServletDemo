<!DOCTYPE html>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background-image: url('https://i2.wp.com/goldwallpapers.com/uploads/posts/plain-white-wallpaper/plain_white_wallpaper_026.jpg?resize=820%2C461');">
<div class="container" align="center">
<h4 style="color: navy;" align="center">Edit Profile</h4>
</div>
<div style="width: 100%">
<div class="col-sm-4">
</div>
<div class="col-sm-4">
<form action="<%=request.getContextPath() %>/Update" method ="post">

<% ArrayList<HashMap<String,String>> details =(ArrayList<HashMap<String,String>>) request.getAttribute("details"); %>
<br>
<input type="text" name="fname" class="form-control" required="required" value="<%=details.get(0).get("fname")%>" placeholder="FirstName"/>
<br>
<input type="text" name="lname" class="form-control" required="required" value="<%=details.get(0).get("lname")%>" placeholder="LastName"/>
<br>
<input type="text" name="address"class="form-control" required="required" value="<%=details.get(0).get("address")%>"placeholder="Address"/>
<br>
<input type="email" name = email class="form-control"required="required" value="<%=details.get(0).get("emails")%>" placeholder="Enter Email">
<br>
<input type="password" name = password class="form-control"required="required" value="<%=details.get(0).get("password")%>" placeholder="Password">
<br>
<input type="password" name = cpassword class="form-control"required="required" value="<%=details.get(0).get("password")%>"placeholder="Confirm Password">

<br>
<div class="form-group" style="margin-left: 11%" align="center">
                   
                      <div class="col-md-10" align="center">
                       
                       <%if(details.get(0).get("gender").equals("Male")){ %>
                        <div class="btn-group radio-group" align="center">
                               <label class="btn btn-primary not-active">Male <input type="radio" name ="gender" id="m" checked="checked" value="1"></label>
                               <label class="btn btn-primary not-active">Female <input type="radio" name ="gender" id="f" value="0"></label>
                            
                         </div>
                       <%}else{%>
                        <div class="btn-group radio-group" align="center">
                               <label class="btn btn-primary not-active">Male <input type="radio" name ="gender" id="m" value="1"></label>
                               <label class="btn btn-primary not-active">Female <input type="radio" name ="gender" id="f" checked="checked" value="0"></label>
                            
                         </div>
                       <%} %>
                           
                    </div>
                </div>


<div class="dropdown" style="margin-top: 18%;" align="center">
    <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">Select Your Country
    <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">India</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Pakistan</a></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#">China</a></li>
    </ul>
  </div>

          <div align="center" class="dropdown" hidden="true">
			<select name="Country" class="dropdown">
			<option value ="india"> India</option>
			<option value ="pakistan"> Pakistan</option>
			<option value ="china"> China</option>
			<option value ="africa"> Africa</option>
			</select>
	      </div>
	   <br>
			<div align="center"><input type="submit" class="btn-success" value="Update"></div>
	      
</form>
</div>
<div class="col-sm-4">

</div>
</div>

</body>
</html>
