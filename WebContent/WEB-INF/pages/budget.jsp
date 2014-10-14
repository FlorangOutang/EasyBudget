<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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
				margin-bottom: 20px;
			}
			h3 {
				border-bottom: 1px solid black;
			}
			.btn-xs {
				margin-top: -71px;
				margin-left: 122px;
			}
			p {
				color: gray;
			}
			.form-actions {
				margin-top: 70px;
			}
			.col-sm-1 {
				width: 9%;
			}
			.col-sm-1 p {
				padding-top: 5px;
				color: black;
			}
			.col-sm-3 {
				width: 15%;
				margin-left: 20px;
			}
		</style>
		<title>Easy Budget</title>
	</head>
	<body>
		<h1>Message : ${message}</h1>
		<form class="form-horizontal" role="form" id="firstBlock">
		<p>Please enter your available balance for the month.</p>
		   <div class="form-group">
		      <label for="balance" class="col-sm-2 control-label">Available Balance</label>
		      <div class="col-sm-5">
		      	<input type="text" name="money" class="form-control" id="balance" 
		            placeholder="Enter The Amount">
		      </div>
		   </div>
		</form>
		<h3>Expenses</h3>
		<button type="button" class="btn btn-default btn-xs"><span class="glyphicon glyphicon-plus"></span></button>
		<p>Please enter all of your expenses for the month.</p>
		<form class="form-horizontal" role="form" id="lastBlock">
		   <div class="form-group typemovement">
		      <div class="col-sm-3">
			      <div class="btn-group">
				    <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#">Select a expense <span class="caret"></span></a>
				    <ul class="dropdown-menu">
				      <c:forEach items="${expensesList}" var="option">
				      <li><a href="#" value="${option}">
	                    <c:out value="${option.value}"></c:out></a></li>
				      </c:forEach>
				    </ul>
				  </div>
			  </div>
			  <div class="col-sm-6">
		      	<input type="text" class="form-control" id="balance" 
		            placeholder="Enter The Amount">
		      </div>
		      <div class="col-sm-1">
				<button type="button" class="btn btn-default btn-xm"><span class="glyphicon glyphicon-trash"></span></button>
		      </div>
		  </div>
		</form>
		
		<h3>Saving</h3>
		<div class="form-group">
			<div class="col-sm-1">
				<p>You saved : </p>
			</div>
			<div class="col-sm-1">
				<input class="form-control" type="text" placeholder="100€" readonly>
			</div>
		</div>
		<div class="form-actions">
			<button type="submit" class="btn btn-primary">Save changes</button>
		  	<button type="button" class="btn">Cancel</button>
		</div>
		
		<script type="text/javascript" src="resources/themes/jquery/js/jquery.min.js"></script>
	  	<script type="text/javascript" src="resources/themes/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				
				function setBehavior($line) {
					$line.find('.dropdown-menu li a').click(function() { 
						var text = $(this).text();
					    $line.find('.dropdown-toggle').html(text + '<span class="caret"></span>');    
					});
				}			
				
				var maxField = 5;
				var wrapper = $("#lastBlock");
				var addFieldButton = $(".btn-xs");
				var i = 1;
				var firstLine = $(".typemovement");
				var firstLineClone = firstLine.clone().css('display', 'none');
				
				setBehavior(firstLine);	
					
				$(addFieldButton).click(function(e) {
					e.preventDefault();
			        if(i < maxField) {
			        	i++;
			        	var newLine = firstLineClone.clone().css('display', 'block');
			        	setBehavior(newLine);
			        	wrapper.append(newLine);
			        	$('.btn-xm').click(function(e) {
							console.log(this);
							$(this).parent().parent().remove();
							i--;
						});
			        } else {
			        	alert('t\'as trop de lignes');
			        }
			    });
				
				$('.btn-xm').click(function(e) {
					console.log(this);
					$(this).parent().parent().remove();
					i--;
				});
			});
		</script>
	</body>
</html>