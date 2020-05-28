<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<title>User Page</title>
</head>
<style>
 .flip {
	font-size: 16px;
	padding: 10px;
	text-align: center;
	background-color: #0EBFE9;
	color: white;
	border: solid 1px #a6d8a8;
	margin: auto;
}

#panel {
	display: none;
}
</style>
<body>
	<div class="container">
	<div class="col-3"></div>
	<div class="col-6">
		<p class="flip" onclick="myFunction()">SHOW ACCOUNT DETAILS</p>
		<div id="panel">
			<div class="card">
				<ul class="list-group list-group-flush">
					<li class="list-group-item"><b>UserName:</b> ${name}</li>
					<li class="list-group-item"><b>Mobile:</b> ${mobile}</li>
					
					<li class="list-group-item"><b>Account Number:</b> ${accountno}</li>
					<li class="list-group-item"><b>Account Balance:</b> ${balance}</li>
				</ul>
			</div>
		</div>
	</div>
	</div>
</body>
<script>
	function myFunction() {
		document.getElementById("panel").style.display = "block";
	}
</script>
</html>