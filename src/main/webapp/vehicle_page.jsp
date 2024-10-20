<%@ page import="java.util.List" %>
<%@ page import="vehicle.ReadVehicle" %>
<%@ page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Css/vehicle_page.css">
    <link rel="stylesheet" href="Css/navBar_footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Document</title>
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

    <div class="sample-vehicle">
        <h3 class="vehicle_H_name">Vehicle Name</h3>
        <!-- <hr> -->
        <div class="row_vehicle">
            <div class="left_column_vehicle">
                <div class="vehicle_image_box">
                    <img src="./bg_images/vehicle_image.jpg" alt="Vehicle Image" class="vehicle_img">
                </div>
            </div>
            <div class="right_column_vehicle">
            	<hr class="my_hr">
                <p><strong>Vehicle Number :</strong> BAS-1254</p>
                <hr class="my_hr">
                <p><strong>Brand :</strong> Range Rover</p>
                <hr class="my_hr">
                <p><strong>Model :</strong> Evoque</p>
                <hr class="my_hr">
                <p><strong>Type :</strong> SUV</p>
                <hr class="my_hr">
                <p><strong>Color :</strong> White</p>
                <hr class="my_hr">
                <p><strong>Year :</strong> 2010</p>
                <hr class="my_hr">
                <p><strong>Price Per Hour :</strong> Rs: 10,000.00</p>
                <hr class="my_hr">
            </div>
        </div>
        <br>
        <div class="vehicle-actions">
            <button class="edit-button">Edit <i class="fa fa-edit"></i></button>
            <br><br>
            <button class="delete-button">Delete </button>
        </div>  
    </div>
    
    
    <%
    ReadVehicle vehicle = new ReadVehicle();
    List<ReadVehicle> data = vehicle.get_values();
    
    for (ReadVehicle vehicledata : data) {
%> 
        <div class="sample-vehicle">
        <h3 class="vehicle_H_name"> <%= vehicledata.getBrand() %> </h3>
        <!-- <hr> -->
        <div class="row_vehicle">
            <div class="left_column_vehicle">
                <div class="vehicle_image_box">
                    <img src="./bg_images/vehicle_image.jpg" alt="Vehicle Image" class="vehicle_img">
                </div>
            </div>
            <div class="right_column_vehicle">
           		<hr class="my_hr">
                <p><strong>Vehicle Number :</strong> <%= vehicledata.getVehicle_number() %></p>
                <hr class="my_hr">
                <p><strong>Brand :</strong> <%= vehicledata.getBrand() %></p>
                <hr class="my_hr">
                <p><strong>Model :</strong> <%= vehicledata.getModel() %></p>
                <hr class="my_hr">
                <p><strong>Type :</strong> <%= vehicledata.getType() %></p>
                <hr class="my_hr">
                <p><strong>Color :</strong> <%= vehicledata.getColor() %></p>
                <hr class="my_hr">
                <p><strong>Year :</strong> <%= vehicledata.getV_year() %></p>
                <hr class="my_hr">
                <p><strong>Price Per Hour :</strong> <%= vehicledata.getPrice_hour() %></p>
                <hr class="my_hr">
            </div>
        </div>
        <br>
        <div class="vehicle-actions">
          <form action="update_vehicle_form.jsp?vehicle_number=<%= vehicledata.getVehicle_number() %>" method="post">
        	<button class="edit-button">Edit <i class="fa fa-edit"></i></button>
     	</form>
        <form action="delete_vehicle.jsp?vehicle_number=<%= vehicledata.getVehicle_number() %>" method="post">
        	<input type="hidden" value="<%= vehicledata.getVehicle_number() %>">
    		<input type="submit" value="Delete" class="edit-button">
		</form>
        </div>  
    </div>
 <% 
    }
%>  
    
    
    
    
    
    <div class="form-container">
        <form action="vehicle" method="post">
            <div class="form-row">
                <div class="form-column">
                    <label>Vehicle Number :</label>
                    <input type="text" name="vehicle_number" placeholder="Enter vehicle number" class="form-input" required>
                </div>
                <div class="form-column">
                    <label>Brand:</label>
                    <input type="text" name="brand" placeholder="Enter vehicle brand" class="form-input" required>
                </div>
                <div class="form-column">
                    <label>Model:</label>
                    <input type="text" name="model" placeholder="Enter vehicle model" class="form-input" required>
                </div>
            </div>
            <div class="form-row">
                <div class="form-column">
                    <label>Type:</label>
                    <input type="text" name="type" placeholder="Enter vehicle type" class="form-input" required>  
                </div>
                <div class="form-column">
                    <label>Color:</label>
                    <input type="text" name="color" placeholder="Enter vehicle color" class="form-input" required>
                </div>
            </div>
            <div class="form-row">
                <div class="form-column">
                    <label>Year:</label>
                    <input type="text" name="v_year" placeholder="Enter vehicle year" class="form-input" required>
                </div>
                <div class="form-column">
                    <label>Price Per Hour :</label>
                    <input type="text" name="price_hour" placeholder="Enter the price per hour" value="Rs. " class="form-input" required>
                </div>
            </div>
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
                    <li><a href="index.html">Home</a></li>
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
