<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="feedback.DeleteFeedback"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String feedback_id=request.getParameter("feedback_id");
	DeleteFeedback DeleteFeedback = new DeleteFeedback();
	DeleteFeedback.delete_value(feedback_id);
%>

<h1>Feedback Deleted Successfully ! <a href="feedback_page.jsp">Back to dashboard</a> </h1>
</body>
</html>