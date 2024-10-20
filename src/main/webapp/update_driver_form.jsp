<%@page import="driver.StoreDriver"%>
<%@page import="driver.EditDriver"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Css/driver_page.css">
<style>
.form-container{
	margin-top:30px;
}
</style>
</head>
<body>
<%
	String email=(String)request.getParameter("email");
	EditDriver obj_Edit_values = new EditDriver();
	StoreDriver data = obj_Edit_values.get_value(email);
%>

	<div class="form-container">
    <form action="edit_driver.jsp?email=<%= email %>" method="post">
        <div class="form-row">
            <div class="form-column">
                <label for="first_name">First Name:</label>
                <input type="text" id="first_name" name="first_name" placeholder="Enter your first name" class="form-input"  required>
            </div>
            <div class="form-column">
                <label for="last_name">Last Name:</label>
                <input type="text" id="last_name" name="last_name" placeholder="Enter your last name" class="form-input"  required>
            </div>
        </div>
        <div class="form-row">
            <div class="form-column">
                <label for="province">Province:</label>
                <select id="province" name="province" class="form-input" required>  
                    <option value="Central Province">Central Province</option>
                    <option value="Eastern Province">Eastern Province</option>
                    <option value="Northern Province">Northern Province</option>
                    <option value="North Central Province">North Central Province</option>
                    <option value="North Western Province">North Western Province</option>
                    <option value="Sabaragamuwa Province">Sabaragamuwa Province</option>
                    <option value="Southern Province">Southern Province</option>
                    <option value="Uva Province">Uva Province</option>
                    <option value="Western Province">Western Province</option>
                </select>
            </div>
            <div class="form-column">
                <label for="city">City:</label>
                <select id="city" name="city" class="form-input">
                    <option value="Ampara">Ampara</option>
                    <option value="Anuradhapura">Anuradhapura</option>
                    <option value="Badulla">Badulla</option>
                    <option value="Batticaloa">Batticaloa</option>
                    <option value="Colombo">Colombo</option>
                    <option value="Galle">Galle</option>
                    <option value="Gampaha">Gampaha</option>
                    <option value="Hambantota">Hambantota</option>
                    <option value="Jaffna">Jaffna</option>
                    <option value="Kalutara">Kalutara</option>
                    <option value="Kandy">Kandy</option>
                    <option value="Kegalle">Kegalle</option>
                    <option value="Kilinochchi">Kilinochchi</option>
                    <option value="Kurunegala">Kurunegala</option>
                    <option value="Mannar">Mannar</option>
                    <option value="Matale">Matale</option>
                    <option value="Matara">Matara</option>
                    <option value="Monaragala">Monaragala</option>
                    <option value="Mullaitivu">Mullaitivu</option>
                    <option value="Nuwara Eliya">Nuwara Eliya</option>
                    <option value="Polonnaruwa">Polonnaruwa</option>
                    <option value="Puttalam">Puttalam</option>
                    <option value="Ratnapura">Ratnapura</option>
                    <option value="Trincomalee">Trincomalee</option>
                    <option value="Vavuniya">Vavuniya</option>
                </select>
            </div>
        </div>
        <div class="form-row">
            <div class="form-column">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Enter your email address" class="form-input"  required>
            </div>
            <div class="form-column">
                <label for="contact_no">Contact No:</label>
                <input type="tel" id="contact_no" name="contact_no" placeholder="+94" class="form-input" required>
            </div>
        </div>
        <div class="form-row">
            <div class="form-column">
                <label>Gender:</label>
                <input type="radio" id="male" name="gender" value="male" required> Male
                <input type="radio" id="female" name="gender" value="female" required> Female
            </div>
            <div class="form-column">
                <label for="price_per_hour">Price Per Hour :</label>
                <input type="text" id="price_per_hour" name="price_per_hour" placeholder="Enter the price per hour" value="Rs. " class="form-input"  required>
            </div>
        </div>
        <label for="img">Upload Licence Image : </label>
        <input type="file" id="img_file" name="img_file" class="form-input">
        <input type="submit" value="Submit" class="submitbtn">
    </form>
</div>

</body>
</html>