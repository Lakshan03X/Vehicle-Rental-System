<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="vehicle.DeleteVehicle"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String vehicle_number = request.getParameter("vehicle_number");
	DeleteVehicle DeleteFeedback = new DeleteVehicle();
	DeleteFeedback.delete_value(vehicle_number);
%>

<h1>Account Deleted Successfully ! <a href="vehicle_page.jsp">Back to dashboard</a> </h1>

</body>
</html>