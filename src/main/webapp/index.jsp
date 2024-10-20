<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle Rental System</title>
    <link rel="stylesheet" href="Css/Index_style.css">
    <link rel="stylesheet" href="Css/feedback_page.css">
    <link rel="stylesheet" href="Css/navBar_footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
    .container02 {
    display: flex;
    justify-content: space-around;
    margin: 20px auto;
    max-width: 800px;
}

.columnU {
    flex: 1;
    padding: 20px;
    background-color: #f4f4f4;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.columnU h2 {
    color: #333;
}

.columnI p {
    color: #666;
}

.container03 {
    text-align: center;
    max-width: 1300px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.container03 h1 {
    color: #333;
    font-size: 2em;
    margin-bottom: 20px;
}

.container03 p {
    color: #666;
    font-size: 1.1em;
    line-height: 1.6;
}

.feedback_btn {
    background-color: #007bff;
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin-top: 20px;
    border-radius: 5px;
    cursor: pointer;
}

.feedback_btn a {
    color: white;
    text-decoration: none;
}

.feedback_btn:hover {
    background-color: #0056b3;
}

    
    </style>
</head>
<body>
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

    <div class="container01">
        <div class="bg-img">
            <div class="bg-img-text">
                <h1>Welcome to ZoomRide</h1>
                <p>Discover the diverse fleet at ZoomRide, your premier destination for vehicle rentals. Whether you seek the efficiency of a compact car or the comfort of a luxurious SUV, we cater to all your travel needs. Our seamless rental system ensures convenience at every step of your journey. Choose ZoomRide for unparalleled selection and service. Drive with confidence and style, wherever your adventure takes you.</p>
            </div>
            <div class="bg-img-btn">
                <button class="rent-btn">RENT VEHICLES    . <i class="fa fa-car"></i>
                </button>
            </div>
            <img class="bg-img-slide" src="./bg_images/img-bg01.jpg" alt="Background Image">
        </div>
    </div>
        
<div class="container02">
    <div class="columnU">
        <h2>Vehicle Information</h2>
        <p>Explore detailed specifications and features of our latest vehicle models.</p>
        <a href="#" class="btn">Explore</a>
    </div>
    <div class="columnU">
        <h2>Vehicle <br>Tracking</h2>
        <p>Track your rented vehicles in real-time and monitor their location and status.</p>
        <a href="#" class="btn">Track Now</a>
    </div>
    <div class="columnU">
        <h2>Vehicle Repairs</h2>
        <p>Find authorized repair centers and schedule maintenance for your rented vehicles.</p>
        <a href="#" class="btn">Schedule Repair</a>
    </div>
</div>

	<div class="container03">
    <h1>About Us</h1>
    <p>ZoomRide revolutionizes vehicle rentals, prioritizing convenience, reliability, and affordability. With diverse vehicle options catering to city commutes or road trips, ZoomRide guarantees a seamless booking process and transparent pricing. Enjoy the freedom and peace of mind of travel with ZoomRide. Join us today to redefine your journey experience.</p>
    <button class="feedback_btn"><a href="feedback_page.jsp">Leave Feedback <i class="fa fa-sticky-note"></i></a></button>
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
                    <li><a href="#"><i class='fa fa-map-marker'></i>&emsp;123/2, Colombo, Malabe</a></li>
                    <li><a href="#"><i class='fa fa-address-book'></i>&emsp;+001 2345 678</a></li>
                    <li><a href="#"><i class='fa fa-envelope'></i>&emsp;ZoomRide@gmail.com</a></li>
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
    const images = ['./bg_images/img-bg01.jpg', './bg_images/img-bg02.jpg', './bg_images/img-bg03.jpg'];
let currentIndex = 0;

function changeBackground() {
    document.querySelector('.bg-img-slide').src = images[currentIndex];
    document.querySelector('.bg-img-slide').style.opacity = '1';
    currentIndex = (currentIndex + 1) % images.length;
    setTimeout(() => {
        document.querySelector('.bg-img-slide').style.opacity = '0';
        setTimeout(changeBackground, 500);
    }, 5000);
}

window.onload = changeBackground;


</script>
</html>
