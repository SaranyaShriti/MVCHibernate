<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of Routes</title>
</head>
<body>


	<div class="container-fluid">

		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Source</th>
							<th scope="col">Destination</th>
							<th scope="col">Fare</th>
							<th scope="col">Book</th>

						</tr>
						<c:forEach var="route" items="${listRoutes}">
							<tr>
								<td><c:out value="${route.source}" /></td>
								<td><c:out value="${route.destination}" /></td>
								<td><c:out value="${route.fare}" /></td>
								<td><a href="carList?id=${route.id}">Book</a><br>
							</tr>
						</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>