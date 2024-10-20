<%@page import="admin.StoreUser"%>
<%@page import="admin.EditUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="./Css/register_page.css">
</head>
<body>
<%
	String email =(String)request.getParameter("email");
	EditUser obj_Edit_values =new EditUser();
	
	StoreUser storeuser = obj_Edit_values.get_value(email);
%>
<div class="main-container">
        <div class="container">
            <form action="edit_user.jsp?email=<%= email %>" method="post" class="form">
                <h1 class="form-title">Update Details</h1>

                <div class="row">
                    <!-- First Column -->
                    <div class="column">
                        <div class="form-group">
                            <label for="f_name" class="form-label">First Name :</label>
                            <input type="text" id="f_name" name="f_name" class="form-input" value="<%= storeuser.getFirst_name() %>" placeholder="Enter First Name" required>
                        </div>
                        <div class="form-group">
                            <label for="province" class="form-label">Province :</label>
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

                        <div class="form-group">
                            <label for="email" class="form-label">Email :</label>
                            <input type="email" id="email" name="email" class="form-input" value="<%= storeuser.getEmail() %>" placeholder="Enter your email" required>
                        </div>

                    </div>

                    <div class="column">
                        <div class="form-group">
                            <label for="l_name" class="form-label">Last Name :</label>
                            <input type="text" id="l_name" name="l_name" class="form-input" placeholder="Enter Last Name" required>
                        </div>
                        <div class="form-group">
                            <label for="city" class="form-label">City :</label>
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

                        <div class="form-group">
                            <label for="contact" class="form-label">Contact No :</label>
                            <input type="tel" id="contact_no" name="contact_no" class="form-input" placeholder="+94 " required>
                        </div>
                    </div>
                </div>

                
                <div class="form-group">
                    <label for="gender" class="form-label" style="display: inline-flex;">Choose Gender Type :</label>
                    <input type="radio" class="gender_type" name="gender_type" value="Male" style="margin-left: 30px;"> Male
                    <input type="radio" class="gender_type" name="gender_type" value="Female" style="margin-left: 30px;"> Female
                </div>

                <div class="form-group">
                    <label for="password" class="form-label">Password :</label>
                    <input type="password" id="password" name="password" class="form-input" placeholder="Enter your password" required>
                </div>
    
                <div class="form-group">
                    <label for="user_type" class="form-label" style="display: inline-flex;">Choose User Type :</label>
                    <input type="radio" class="user_type" name="user_type" value="Customer" style="margin-left: 30px;"> Customer
                    <input type="radio" class="user_type" name="user_type" value="Driver" style="margin-left: 30px;"> Driver
                    <br><br>
                </div>
                
                <input type="submit" class ="form-button" value="Update details"> 

            </form>
        </div>
    </div>
</body>
</html>