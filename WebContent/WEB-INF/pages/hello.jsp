<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="resources/themes/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="resources/themes/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="resources/themes/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
		<style type="text/css">
			body {
				margin: 20px;
			}
		 	h1 {
				border-bottom: 1px solid black;
				width: 100%;
				padding-bottom: 10px;
				margin-bottom: 50px;
			}
		</style>
		<title>Easy Budget</title>
	</head>
	<body>
		<h1>Identification</h1>
		<form class="form-horizontal" role="form">
		   <div class="form-group">
		      <label for="login" class="col-sm-2 control-label">Login</label>
		      <div class="col-sm-10">
		         <input type="text" class="form-control" id="login" 
		            placeholder="Ex: Hoshiyo">
		      </div>
		   </div>
		   <div class="form-group">
    		<label for="exampleInputPassword1" class="col-sm-2 control-label">Password</label>
    		<div class="col-sm-10">
    			<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  			</div>
  		</div>
	</form>
		<div class="form-actions">
			<a href="budget"><button type="submit" class="btn btn-primary">Sign In</button></a>
		</div>
		<script type="text/javascript" src="resources/themes/jquery/js/jquery.min.js"></script>
	  	<script type="text/javascript" src="resources/themes/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>