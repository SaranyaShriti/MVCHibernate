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

			<p>You have booked car for your travel! </p>
			
			
			<p class="text-primary">Car model : ${car.cartype}</p>
			<p class="text-primary">Seater : ${car.seater}</p>
			<p class="text-primary">From : ${route.source}</p>
			<p class="text-primary">To : ${route.destination}</p>
			<p></p>

		</div>
	</div>
</body>
</html>