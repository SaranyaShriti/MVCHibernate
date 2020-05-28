<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of Cars</title>
</head>
<body>
 
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Cars</h2></caption>
            <tr>
                <th>Car Number</th>
                <th>Car Type</th>
                <th>Seater</th>
                
            </tr>
            <%-- <c:forEach var="car" items="${listCars}">
                <tr>
                    <td><c:out value="${car.carnumber}" /></td>
                    <td><c:out value="${car.cartype}" /></td>
                    <td><c:out value="${car.seater}" /></td>
                </tr>
            </c:forEach> --%>
        </table>
    </div>
</body>
</html>