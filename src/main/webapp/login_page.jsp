<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Css/navBar_footer.css">
    <link rel="stylesheet" href="Css/login_page.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Document</title>
</head>
<body>
    <script>
        window.onload = function() {
            const alertBox = document.getElementById('alertBox');
            if (alertBox) {
                setTimeout(() => {
                    alertBox.classList.add('hidden');
                }, 3000); // 3 seconds
            }
        }
    </script>
    <% if (request.getAttribute("alert") != null) { %>
        <div id="alertBox" class="alert" style="background-color:red;"><%= request.getAttribute("alert") %></div>
    <% } %>

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
        <div class="form">
            <center>
                <h2>Login Here</h2>
            </center>
        <form action="login" method="post">
            <p class="email">E-Mail</p>
            <input type="email" name="email" placeholder="Enter your Email" required>

            <p class="passwd">Password</p>
            <input type="password" name="password" placeholder="Enter your password" required>
            <br><br>
            <a href="">Forgot password ?</a>
            <br><br>

            <input type="submit" class="submitbtn" value="Login">
            <br><br>
            <label class="dhat">Don't have an account : </label>
            <a href="register_page.jsp">Sign Up</a>
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