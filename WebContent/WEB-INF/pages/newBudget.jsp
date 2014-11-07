<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="resources/themes/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/themes/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/themes/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
  <style type="text/css">
  		body {
			text-align: center;
		}
		.btn {
		    margin-top: 30px;
		}
  </style>
<title>EasyBudget - New Budget</title>
</head>
<body>
	<h4>Saving</h4>
	<form role="form">
	  <div class="form-group">
		    <label for="title">You saved :</label>
		    
	         <input name="newMoney" class="form-control" type="text" readonly value="${newMoney}"/>
	      </div>
         <a href="javascript:history.go(-1)"><button type="button" class="btn btn-default btn-lg">Back to previous page</button></a>

	</form>
	<script type="text/javascript" src="resources/themes/jquery/js/jquery.min.js"></script>
  	<script type="text/javascript" src="resources/themes/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>

