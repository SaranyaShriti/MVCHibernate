<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of Routes</title>
</head>
<body>
 
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Routes</h2></caption>
            <tr>
                <th>Source</th>
                <th>Destination</th>
                <th>Fare</th>
                <th>Book</th>
                
            </tr>
            <%-- <c:forEach var="route" items="${listRoutes}">
                <tr>
                    <td><c:out value="${route.source}" /></td>
                    <td><c:out value="${route.destination}" /></td>
                    <td><c:out value="${route.fare}" /></td>
                </tr>
            </c:forEach> --%>
        </table>
    </div>
</body>
</html>