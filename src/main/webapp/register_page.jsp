<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./Css/navBar_footer.css">
    <link rel="stylesheet" href="./Css/register_page.css">
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
                <input type="search" name="search-bar" id="search-bar" placeholder="search...">
                <button class="search-btn"><i class="fa fa-search" style="font-size:large; color:#ff9f00;"></i></button>
                <li><a href="register_page.jsp" class="nav-a">Sign-Up</a></li>
                <a href="" style="text-decoration: none;">
                    <img src="./Logo__Icons/profile-icon.png" alt="profile-icon" class="profile-icon" >
                </a>
            </ul>
        </nav>
    </header>
    <!-- ----------------------------------------------- -->
    <div class="main-container">
        <div class="container">
            <form action="registration" method="post" class="form" onsubmit="showAlert()">
                <h1 class="form-title">Register Here</h1>

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
                
                <input type="submit" class ="form-button" value="Register Now"> 
                <br>
                <h4>Already Registered : <a href="login_page.jsp" style="text-decoration:none; color: rgb(81, 0, 255);"> Login Here</a></h4>
            </form>
        </div>
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
    <script>
        function showAlert() {
            alert("Registration successful!");
        }
    </script>
</html>