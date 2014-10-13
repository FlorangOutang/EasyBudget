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
		 	h3 {
				text-decoration: underline;
				width: 100%;
			}
		</style>
		<title>Easy Budget</title>
	</head>
	<body>
		<h1>Message : ${message}</h1>
		<form class="form-horizontal" role="form">
		   <div class="form-group">
		      <label for="balance" class="col-sm-2 control-label">Available Balance</label>
		      <div class="col-sm-10">
		      	<p class="form-control-static">100€</p>
		      </div>
		   </div>
		</form>
		<h3>Expenses</h3>
		<form class="form-horizontal" role="form">
		   <div class="form-group">
		      <label for="pocketmoney1" class="col-sm-2 control-label">Pocket Money Child 1</label>
		      <div class="col-sm-10">
		         <input type="text" class="form-control" id="pocketmoney" 
		            placeholder="Enter The Amount">
		      </div>
		   </div>
		   <div class="form-group">
		      <label for="pocketmoney2" class="col-sm-2 control-label">Pocket Money Child 2</label>
		      <div class="col-sm-10">
		         <input type="text" class="form-control" id="pocketmoney2" 
		            placeholder="Enter The Amount">
		      </div>
		   </div>
		   <div class="form-group">
		      <label for="groceryshopping" class="col-sm-2 control-label">Grocery Shopping</label>
		      <div class="col-sm-10">
		         <input type="text" class="form-control" id="groceryshopping" 
		            placeholder="Enter The Amount">
		      </div>
		   </div>
		   <div class="form-group">
		      <label for="hobbies" class="col-sm-2 control-label">Hobbies</label>
		      <div class="col-sm-10">
		         <input type="text" class="form-control" id="hobbies" 
		            placeholder="Enter The Amount">
		      </div>
		   </div>
		</form>
		<div class="form-actions">
			<button type="submit" class="btn btn-primary">Save changes</button>
		  	<button type="button" class="btn">Cancel</button>
		</div>
		<script type="text/javascript" src="resources/themes/jquery/js/jquery.min.js"></script>
	  	<script type="text/javascript" src="resources/themes/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>