<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Supplier Form</title>
    <link rel="stylesheet" href="./Css/register_page.css">
    <style>
        .container {
            max-width: 600px;
            margin: 0 auto;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-weight: bold;
        }
        input[type="text"], input[type="email"],input[type="tel"], select {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="main-container">
        <div class="container">
            <form action="user" method="post" class="form">
                <h1 class="form-title">ADD User</h1>

                <div class="row">
                    <!-- First Column -->
                    <div class="column">
                        <div class="form-group">
                            <label for="f_name" class="form-label">First Name :</label>
                            <input type="text" id="f_name" name="f_name" class="form-input" placeholder="Enter First Name" required>
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
                            <input type="email" id="email" name="email" class="form-input" placeholder="Enter your email" required>
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
                
                <input type="submit" class ="form-button" value="Update Details"> 
                <br>
            </form>
        </div>
    </div>
    
</body>
</html>