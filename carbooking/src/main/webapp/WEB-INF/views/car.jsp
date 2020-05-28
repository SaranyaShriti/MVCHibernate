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
<title>List of Cars</title>
</head>
<body>


	<div class="container-fluid">

		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Car Number</th>
							<th scope="col">Car Type</th>
							<th scope="col">Seater</th>
							<th scope="col">Book</th>

						</tr>
						<c:forEach var="car" items="${carsList}">
							<tr>
								<td><c:out value="${car.carnumber}" /></td>
								<td><c:out value="${car.cartype}" /></td>
								<td><c:out value="${car.seater}" /></td>
								<td><a href="userview?carId=${car.id}&routeId=${routeId}">Book</a><br>
							</tr>
						</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>