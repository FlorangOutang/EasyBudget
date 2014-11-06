<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="resources/themes/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/themes/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/themes/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
<title>EasyBudget - New Budget</title>
</head>
<body>
	<!-- set up the modal to start hidden and fade in and out -->
<!-- 	<div id="dialog" class="modal fade"> -->
<!-- 		<div class="modal-dialog"> -->
<!-- 		    <div class="modal-content"> -->

		    <!-- dialog header -->
		    <div class="modal-header">
		    	<button type="button" class="close" data-dismiss="modal">&times;<span class="sr-only">Close</span></button>
		        <h4 class="modal-title" id="myModalLabel">Saving</h4>
		      </div>
		      
		      <!-- dialog body -->
		      <div class="modal-body">
		        <form class="form-horizontal" role="form">
				   <div class="form-group">
				      <p>You saved : </p>
				      <div class="col-sm-5">
				         <input name="newMoney" class="form-control" type="text" readonly value="${newMoney}"/>
				      </div>
				   </div>
			</form>
		      </div>
		      <!-- dialog buttons -->
		      <div class="modal-footer"><button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
		      </div>
<!-- 		   </div> -->
<!-- 		 </div> -->
<!-- 	   </div> -->
		
		<script type="text/javascript" src="resources/themes/jquery/js/jquery.min.js"></script>
	  	<script type="text/javascript" src="resources/themes/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>

