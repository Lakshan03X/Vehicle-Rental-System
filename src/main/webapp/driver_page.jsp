<%@ page import="java.util.List" %>
<%@ page import="driver.ReadDriver" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Base64" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Driver Details</title>

<link rel="stylesheet" href="Css/navBar_footer.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

body {
    font-family: "Poppins", sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
}




.row_driver {
    display: flex;
    justify-content: space-between;
}

.left_column_driver {
    flex: 0 0 25%;
    margin-left: 30px;
    margin-right: 30px;
    padding: 10px;
    border: 2px solid #007bff;
    border-radius: 8px;
    box-shadow: 5px 5px 0px 0px orange;   
}

.right_column_driver {
    flex: 0 0 80%;
    padding: 10px;

}

.sample-driver {
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    margin-top: 20px;
    margin-bottom: 20px;
    border: 2px solid #007bff;
    margin: 10px;
    padding: 10px;
    border-radius: 5px;
    position: relative;
}

.sample-driver p {
    margin: 5px 0;
    margin-left: 10px;
    color: rgb(30, 83, 133);
}

.sample-driver strong {
    font-weight: bold;
    color: black;
}

.my_hr{
    width: 992px;
    margin: 0px;
    padding: 0%;
}


.driver-actions {
    position: absolute;
    bottom: 6px;
    right: 5px;
}

.edit-button,
.delete-button {
    background-color: #ff9f00;
    color: #fff;
    border: none;
    padding: 5px 10px;
    border-radius: 5px;
    cursor: pointer;
    margin-left: 5px;
    font-weight: bold;
}

.driver_H_name{
    color: #ff9f00;
}

.form-row {
    display: flex;
    flex-wrap: wrap;
    margin-bottom: 10px;
}

.form-column {
    flex: 1;
    margin-right: 10px;
}

.form-column:last-child {
    margin-right: 0;
}

.form-container {
    max-width: 500px;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

label {
    display: block;
    margin-bottom: 5px;
}

/* Input styles */
.form-input{
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
    margin-bottom: 20px;
}

.submitbtn {
    width: 100%;
    font-size: large;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    background: linear-gradient(to right, #FF9F00, #FFC107);
    color: #fff;
    cursor: pointer;
    transition: .4s;
}

.submitbtn:hover {
    transform:translate(-2px ,-2px );
    box-shadow: rgba(0, 0, 0, 0.444) 5px 5px 10px;
}

.licence_img{
width:350px;
}

.driver_image_box{
	width:250px;
	height:280px;
}


</style>
</head>

<body>

    <!-- -------this is navigation bar------- -->
    <header>
        <nav class="navbar">
            <a href="index.jsp"><img src="./Logo__Icons/logo-no-bg.png" alt="logo" class="logo"></a>

            <ul class="nav-bar-mid">
                <li><a href="index.jsp" class="nav-a">Home</a></li>
                <li><a href="vehicle_page.jsp" class="nav-a">Vehicle</a></li>
                <li><a href="driver_page.jsp" class="nav-a">Driver</a></li>
                <li><a href="about_page.jsp" class="nav-a">About</a></li>
                <li><a href="contact_page.jsp" class="nav-a">Contact</a></li>
            </ul>

            <ul class="nav-bar-end">
                <li>
                    <input type="search" name="search-bar" id="search-bar" placeholder="search...">
                    <a href="register_page.jsp" class="nav-a">Sign-Up</a>
                </li>
                
                <%
                    if (session.getAttribute("email") == null) {
                %>
                    <li>
                        <button type="button" class="log-btn">
                            <a href="./login_page.jsp">Log In</a>
                        </button>
                    </li>
                <%
                    } else {
                %>
                    <li>
                        <span class="logged-in-email"><%= session.getAttribute("email") %></span>
                        <button type="button" class="log-btn" style="background-color: #007bff; margin-left: 10px;">
                            <a href="logout" style="font-size: 12px;">Log Out</a>
                        </button>
                    </li>
                <%
                    }
                %>
                                <li>
                    <a href="#" style="text-decoration: none;">
                        <img src="./Logo__Icons/profile-icon.png" alt="profile-icon" class="profile-icon">
                    </a>
                </li>
            </ul>
        </nav>
    </header>

    <!-- ----------------------------------------------- -->

<div class="sample-driver">
    <h3 class="driver_H_name">Driver John Doe</h3>
    <!-- <hr> -->
    <div class="row_driver">
        <div class="left_column_driver">
            <div class="driver_image_box">
                <img src="./bg_images/driver_img.jpg" alt="Driver Image" class="licence_img">
            </div>
        </div>
        <div class="right_column_driver">
            <hr class="my_hr">
            <p><strong>First Name :</strong> John</p>
            <hr class="my_hr">
            <p><strong>Last Name :</strong> Doe</p>
            <hr class="my_hr">
            <p><strong>Province :</strong> central Province</p>
            <hr class="my_hr">
            <p><strong>City :</strong> colombo</p>
            <hr class="my_hr">
            <p><strong>Email :</strong> Sedan@gmail.com</p>
            <hr class="my_hr">
            <p><strong>Contact No :</strong> 123456789</p>
            <hr class="my_hr">
            <p><strong>Gender :</strong> male</p>
            <hr class="my_hr">
            <p><strong>Price Per Hour :</strong> Rs: 260.07</p>
            <hr class="my_hr">
        </div>
    </div>
    <br>
    <div class="driver-actions">
        <button class="edit-button">Edit <i class="fa fa-edit"></i></button>
        <button class="delete-button">Delete <i class="fa fa-remove"></i></button>
    </div>  
</div>

<%
	ReadDriver driver = new ReadDriver();
    List<ReadDriver> data = driver.get_values();
    
    for (ReadDriver driverdata : data) {
%> 

<div class="sample-driver">
    <h3 class="driver_H_name">Driver <%= driverdata.getFist_name() %> <%= driverdata.getLast_name() %></h3>
    <!-- <hr> -->
    <div class="row_driver">
        <div class="left_column_driver">
            <div class="driver_image_box">
                <img src="./bg_images/driver_img.jpg" alt="Driver Image" class="licence_img">
            </div>
        </div>
        <div class="right_column_driver">
            <hr class="my_hr">
            <p><strong>First Name :</strong> <%= driverdata.getFist_name() %></p>
            <hr class="my_hr">
            <p><strong>Last Name :</strong> <%= driverdata.getLast_name() %></p>
            <hr class="my_hr">
            <p><strong>Province :</strong> <%= driverdata.getProvince() %></p>
            <hr class="my_hr">
            <p><strong>City :</strong> <%= driverdata.getCity() %></p>
            <hr class="my_hr">
            <p><strong>Email :</strong> <%= driverdata.getEmail() %></p>
            <hr class="my_hr">
            <p><strong>Contact No :</strong> <%= driverdata.getContact_no() %></p>
            <hr class="my_hr">
            <p><strong>Gender :</strong> <%= driverdata.getGender() %></p>
            <hr class="my_hr">
            <p><strong>Price Per Hour :</strong> <%= driverdata.getPrice() %> </p>
            <hr class="my_hr">
        </div>
    </div>
    <br><br>
    <div class="driver-actions">
     <br>
     <form action="update_driver_form.jsp?email=<%= driverdata.getEmail() %>" method="post" class="action">
        <button class="edit-button">Edit <i class="fa fa-edit"></i></button>
     </form>
        
    <form action="delete_driver.jsp?driver_id=<%= driverdata.getDriver_id() %>" method="post" class="action">
        <input type="hidden" value="<%= driverdata.getDriver_id() %>" >
    	<input type="submit" value="Delete" class="delete-button">
	</form>
    </div>  
</div>
<% 
    }
%>

<div class="form-container">
    <form action="driver" method="post">
        <div class="form-row">
            <div class="form-column">
                <label for="first_name">First Name:</label>
                <input type="text" id="first_name" name="first_name" placeholder="Enter your first name" class="form-input" required>
            </div>
            <div class="form-column">
                <label for="last_name">Last Name:</label>
                <input type="text" id="last_name" name="last_name" placeholder="Enter your last name" class="form-input" required>
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
                <input type="email" id="email" name="email" placeholder="Enter your email address" class="form-input" required>
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
                <input type="text" id="price_per_hour" name="price_per_hour" placeholder="Enter the price per hour" value="Rs. " class="form-input" required>
            </div>
        </div>
        <label for="img">Upload Licence Image : </label>
        <input type="file" id="img_file" name="img_file" class="form-input">
        <input type="submit" value="Submit" class="submitbtn">
    </form>
</div>



    

    

    







<!-- --------this is footer ------------- -->
<footer>
    <div class="footer_container">
        <div class="column">
            <h3>ZoomRide Vehicle Rents</h3>
            <p>ZoomRide transforms vehicle rentals with convenience, reliability, and affordability. Offering diverse vehicle options for any journey, from city commutes to road trips, ZoomRide ensures a seamless booking experience with transparent pricing. Experience freedom and peace of mind on the road. Join ZoomRide today and redefine your travel experience.</p>

            <ul>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Our Services</a></li>
                <li><a href="#">Privacy Policy</a></li>
            </ul>

        </div>

        <div class="column">
            <p>ZoomRide transforms vehicle rentals by linking customers with diverse transportation options, ensuring seamless bookings and transparent pricing for an unparalleled travel experience.</p>

            <h3>Quick Links</h3>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#">News</a></li>
                    <li><a href="vehicle_page.jsp">Vehicles</a></li>
                    <li><a href="feedback_page.jsp">Feedbacks</a></li>
                <li><a href="#">Help</a></li>
            </ul>
        </div>

        <div class="column">
            <h3>Contacts</h3>

            <ul>
                <li><a href="#"><i class='fa fa-map-marker'></i>&emsp;No, city, province ,company</a></li>
                <li><a href="#"><i class='fa fa-address-book'></i>&emsp;+001 2345 678</a></li>
                <li><a href="#"><i class='fa fa-envelope'></i>&emsp;EmployeeNet@gmail.com</a></li>
            </ul>

            <h3>Follow Us</h3>
            <div class="social-links">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-instagram"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
            </div>
        </div>

    </div>
</footer>
<!-- ---------------------------------------------------- -->

</body>
    
</html>

