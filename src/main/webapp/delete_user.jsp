<%@page import="admin.DeleteUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String email = request.getParameter("email");
	DeleteUser DeleteFeedback = new DeleteUser();
	DeleteFeedback.delete_value(email);
%>

<h1>Account Deleted Successfully ! <a href="admin_page.jsp">Back to dashboard</a> </h1>

</body>
</html>