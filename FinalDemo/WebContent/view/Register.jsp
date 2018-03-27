<!DOCTYPE html>
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
<h4 style="color: navy;" align="center">Sign-Up</h4>
</div>
<div style="width: 100%">
<div class="col-sm-4">
</div>
<div class="col-sm-4">
<form action="<%=request.getContextPath() %>/Register_Servlet" method ="post">
<br>
<input type="text" name="fname" class="form-control" required="required" placeholder="FirstName"/>
<br>
<input type="text" name="lname" class="form-control" required="required" placeholder="LastName"/>
<br>
<input type="text" name="address"class="form-control" required="required" placeholder="Address"/>
<br>
<input type="email" name = email class="form-control"required="required" placeholder="Enter Email">
<br>
<input type="password" name = password class="form-control"required="required" placeholder="Password">
<br>
<input type="password" name = cpassword class="form-control"required="required"placeholder="Confirm Password">

<br>
<div class="form-group" align="center">
                   
                      <div class="col-md-10" align="center">
                       
                            <div class="btn-group radio-group" align="center">
                               <label class="btn btn-primary not-active">Male <input type="radio" name ="gender" id="m" value="1"></label>
                               <label class="btn btn-primary not-active">Female <input type="radio" name ="gender" id="f" value="0"></label>
                            
                         </div>
                    </div>
                </div>




<br>

<div class="dropdown" align="center" style="margin-top: 5%">
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
			<div align="center"><input type="submit" class="btn-success" value="Register"></div>
	      
</form>
</div>
<div class="col-sm-4">

</div>
</div>

</body>
</html>
