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
<form action="<%=request.getContextPath() %>/Add_Task" method ="post">
<br>
<input type="text" name="name" class="form-control" required="required" placeholder="Name"/>
<br>
<input type="number" name = minute class="form-control"required="number"placeholder="Minute">
<br>
<input type="number" name = hour class="form-control"required="required" placeholder="Hour">
<br>
<input type="number" name="day" class="form-control" required="required" placeholder="Day"/>
<br>
<input type="number" name="month"class="form-control" required="required" placeholder="Month"/>
<br>
<input type="number" name = year class="form-control"required="required" placeholder="Year">
<br>


<br>
			<div align="center"><input type="submit" class="btn-success" value="Add Task"></div>
	      
</form>
</div>
<div class="col-sm-4">

</div>
</div>

</body>
</html>
