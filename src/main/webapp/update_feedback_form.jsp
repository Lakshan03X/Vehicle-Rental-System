<%@page import="feedback.StoreFeedback"%>
<%@page import="feedback.EditFeedback"%>
<%@ page import="java.util.List" %>
<%@ page import="feedback.ReadFeedback" %>
<%@ page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Css/feedback_page.css">
</head>
<body>
<div class="container">
<%
	String feedback_id=(String)request.getParameter("feedback_id");
	EditFeedback obj_Edit_values = new EditFeedback();
	StoreFeedback data = obj_Edit_values.get_value(feedback_id);
%>

    <form action="edit_feedback.jsp?feedback_id=<%= feedback_id %>" method="post">
        <h2>Rate Our Service</h2>
        <label for="rating" class="forminput_lable" >Rating :</label>
        <div class="rating">
            <input type="radio" id="star5" name="rating" value="5 star">
            <label for="star5">&#9733;</label>
            <input type="radio" id="star4" name="rating" value="4 star">
            <label for="star4">&#9733;</label>
            <input type="radio" id="star3" name="rating" value="3 star">
            <label for="star3">&#9733;</label>
            <input type="radio" id="star2" name="rating" value="2 star">
            <label for="star2">&#9733;</label>
            <input type="radio" id="star1" name="rating" value="1 star">
            <label for="star1">&#9733;</label>
        </div>
        <label for="feedback_con" class="forminput_lable" >Feedback Content :</label>
        <textarea name="feedback_con" placeholder="Your feedback..."></textarea>
        <button type="submit" class="submitbtn">Submit</button>
    </form>
</div>

</body>
</html>