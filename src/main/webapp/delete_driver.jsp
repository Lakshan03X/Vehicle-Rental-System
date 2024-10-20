<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="driver.DeleteDriver"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String driver_id = request.getParameter("driver_id");
	DeleteDriver DeleteVehicle = new DeleteDriver();
	DeleteVehicle.delete_value(driver_id);
%>

<h1>Account Deleted Successfully ! <a href="driver_page.jsp">Back to dashboard</a> </h1>
</body>
</html>