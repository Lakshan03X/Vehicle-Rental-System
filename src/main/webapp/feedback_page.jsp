
<%@ page import="java.util.List" %>
<%@ page import="feedback.ReadFeedback" %>
<%@ page import="java.util.Iterator" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Rating and Feedback</title>
<link rel="stylesheet" href="Css/feedback_page.css">
<link rel="stylesheet" href="Css/navBar_footer.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

<div class="sample-feedback">
    <p class="rating_star"><strong class="rating_text">Rating:</strong> 4 Star</p>
    <p><strong>Feedback ID : </strong></p>
    <hr>
    <p><strong>Feedback: </strong> ZoomRide made renting a vehicle seamless! The app interface is user-friendly, and the vehicle selection was diverse. The entire process was efficient, from booking to returning. Highly recommend!</p>
    <div class="feedback-actions">
        <button class="edit-button">Edit <i class="fa fa-edit"></i></button>
        <button class="delete-button">Delete <i class="fa fa-remove"></i></button>
    </div>
</div>

<div class="sample-feedback">
    <p class="rating_star"><strong class="rating_text">Rating:</strong> 3 Star</p>
    <p><strong>Feedback ID : </strong></p>
    <hr>
    <p><strong>Feedback: </strong> Great experience with ZoomRide! The vehicle was clean and well-maintained. The pickup and drop-off were hassle-free, and customer service was excellent. Will definitely use again!</p>
    <div class="feedback-actions">
        <button class="edit-button">Edit <i class="fa fa-edit"></i></button>
        <button class="delete-button">Delete <i class="fa fa-remove"></i></button>
    </div>
</div>


<%
    ReadFeedback feedback = new ReadFeedback();
    List<ReadFeedback> data = feedback.get_values();
    
    for (ReadFeedback feedbackData : data) {
%>
<div class="sample-feedback">
    <p class="rating_star"><strong class="rating_text">Rating: </strong> <%= feedbackData.getRating_value()   %></p>
    <p ><strong >Feedback ID :</strong> <%= feedbackData.getFeedback_id()%></p>
    <hr>
    <p><strong>Feedback: </strong> <%= feedbackData.getFeedback_content() %></p>
    <div class="feedback-actions">
    
    <form action="update_feedback_form.jsp?feedback_id=<%= feedbackData.getFeedback_id() %>" method="post">
        <button class="edit-button">Edit <i class="fa fa-edit"></i></button>
     </form>
     
     <form action="delete_feedback.jsp?feedback_id=<%= feedbackData.getFeedback_id() %>" method="post">
        <input type="hidden" value="<%= feedbackData.getFeedback_id() %>">
    	<input type="submit" value="Delete" class="edit-button">
	</form>
		
    </div>
</div>
<% 
    }
%>




<div class="container">
    <form action="feedback" method="post">
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
        <label for="feedback_id" class="forminput_lable" >Feedback ID :</label>
        <input type="text" name="feedback_id" class="forminput" placeholder="Enter Feedback ID" required>
        <label for="feedback_con" class="forminput_lable" >Feedback Content :</label>
        <textarea name="feedback_con" placeholder="Your feedback..."></textarea>
        <button type="submit" class="submitbtn">Submit</button>
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
                <li><a href="#">Categories</a></li>
                <li><a href="#">Blogs</a></li>
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
