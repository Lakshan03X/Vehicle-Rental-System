<%@page import="feedback.EditFeedback"%>
<%@page import="feedback.StoreFeedback"%>
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
	
String feedback_id=request.getParameter("feedback_id");
String feedback_content=request.getParameter("feedback_con");
String rating=request.getParameter("rating");

StoreFeedback updateFeedback = new StoreFeedback();

updateFeedback.setFeedback_id(feedback_id);
updateFeedback.setFeedback_content(feedback_content);
updateFeedback.setRating_value(rating);


EditFeedback update=new EditFeedback();
update.edit_user(updateFeedback);
%>
</body>
<h1>Feedback Updated Successfully ! <a href="feedback_page.jsp">Back to dashboard</a> </h1>
<script type = "text/javascript">
	var sts = document.getElementById("status").value;
	if (sts == "success") {
		alert("Feedback Updated Successfully !");
	}
</script>

</html>