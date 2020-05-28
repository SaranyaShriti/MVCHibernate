<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<title>Register Page</title>

</head>
<body>

<div class="container">
<div class="row">
<div class="col-3"></div>
<div class=col-6>
	<h3 class="mx-auto" style="width:330px">REGISTRATION FORM</h3>

	<form:form method="post" action="/carbooking/registerUser"
		modelAttribute="registerUserForm">
		<div class="form-group">
			<form:label path="name">Name</form:label>
			<form:input class="form-control" path="name" />
		</div>
		<div class="form-group">
			<form:label path="email">Email</form:label>
			<form:input class="form-control" path="email" />
		</div>
		<div class="form-group">
		<form:label path="mobile">Mobile</form:label>
		<form:input class="form-control" path="mobile" />
		</div>
		
		<div class="form-group">
			<form:label path="password">Password</form:label>
			<form:input class="form-control" path="password" type="password" />
		</div>
		<div class="form-group">

			<input class="btn btn-primary mb-2" type="submit" value="Submit" />
		</div>
	</form:form>
	</div>
</div>
</div>
</body>
</html>