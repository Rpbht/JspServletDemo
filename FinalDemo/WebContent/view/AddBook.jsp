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
<div class="container" align="center" style="margin-top: 15%;">
<h4 style="color: navy;" align="center">Add Your Book</h4>
</div>
<div style="width: 100%">
<div class="col-sm-4">
</div>
<div class="col-sm-4">
<form action="<%=request.getContextPath() %>/Add_Book" method="post">
<input type="text" name="name" class="form-control" required="required" placeholder="Book Name"/>
<br>
<input type="text" name="author" class="form-control" required="required" placeholder="Author Name"/>


	      <br>
			<div align="center"><input type="submit" class="btn-success" value="Add to List"></div>
	      
</form>
</div>
<div class="col-sm-4">

</div>
</div>

</body>
</html>






