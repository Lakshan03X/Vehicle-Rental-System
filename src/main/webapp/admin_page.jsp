<%@page import="admin.ReadUser"%>
<%@page import="vehicle.ReadVehicle"%>
<%@page import="driver.ReadDriver"%>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
     <style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');


/*background-color: #ff9f00;
background-color: #2ecc71; */

body {
    font-family: "Poppins", sans-serif;
    margin: 0;
    padding: 0;
}

.navbar {
    background-color: #618264;
    color: #D0E7D2;
    padding: 8px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.navbar h1 {
    margin: 0;
}

.navbar ul {
    list-style: none;
    padding: 0;
}

.navbar ul li {
    display: inline;
    margin-right: 20px;
}

.navbar ul li a {
    color: #fff;
    text-decoration: none;
}

.sidebar {
    background-color: #79AC78;
    width: 200px;
    height: 128vh;
    float: left;
}

.sidebar ul {
    list-style: none;
    padding: 0;
}

.sidebar ul li {
    margin-bottom: 10px;
}

.sidebar ul li a {
	font-weight:bold;
    color: #333;
    text-decoration: none;
    display: block;
    padding: 10px;
}

.content {
	background-color: #B0D9B9;
    margin-left: 200px;
    padding: 20px;
    height: 850px;
}



/* Hero title styles */
.hero-title {
    margin-top: 20px;
    margin-bottom: 10px;
}

/* Dashboard body styles */
.dash-body {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    padding: 20px;
}

.dash-part {
    flex: 1;
    text-align: center;
    padding: 20px;
    border-radius: 10px;
    margin-bottom: 20px;
    margin-left:10px;
    color: #fff;
}

.dash-part-title {
	font-weigth:bold;
	font-size:20px;
	margin-bottom : 5px;
}
/* Example specific style for number of employees */
.bg-blue {
    background-color: #007bff;
}

/* Example specific style for average salary */
.bg-green {
    background-color: #28a745;
}

/* Example specific style for number of intern employees */
.bg-red {
    background-color: #dc3545;
}

/* Example specific style for number of permanent employees */
.bg-purple {
    background-color: #6f42c1;
}

 table {
    width: 100%;
    border-collapse: collapse;
}
th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}
th {
    background-color: #f2f2f2;
}
.btn {
    padding: 6px 10px;
    border: none;
    cursor: pointer;
    border-radius: 4px;
}
.btn-delete {
    background-color: #f44336;
    color: white;
}
.btn-edit {
    background-color: #4CAF50;
    color: white;
}
.manage_btn{
 	padding:10px;
 	color:white;
 	font-weight:bold;
 	background-color:#79AC78;
 	border: none;
 	border-radius:8px;
 	margin-top:10px;
 	
 	a{
 		text-decoration:none;
 		color:white;
 		font-weight:bold;
 	}
 }
.manage_btn:hover{
 	background-color: #618264;
}
 
.action_form{
    display: inline-block;
}
.admin_name{
color: #D0e7D2;
margin-top:550px;
margin-left:10px;
font-weight:bold;
}
.hr-div{
margin-top:30px;
margin-bottom:10px;
border: 2px solid white;
}
.log-btn{
background-color:#79AC78;
padding:10px;
margin-left:10px;
font-weight:bold;
border: none;
border-radius:8px;
}
    </style>
</head>
<body>
    <nav class="navbar">
        <h1>Z O O M&nbsp;&nbsp;&nbsp;&nbsp;R I D E&nbsp;&nbsp;&nbsp;&nbsp;S Y S T E M</h1>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="#">Vehicles</a></li>
            <li><a href="#">Drivers</a></li>
            <li><a href="#">Reports</a></li>
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
                        <button type="button" class="log-btn">
                            <a href="logout" style="font-size: 16px;">Log Out</a>
                        </button>
                    </li>
                <%
                    }
                %>
        </ul>
    </nav>
    <aside class="sidebar">
        <ul>
            <li><a href="#">Dashboard</a></li>
            <li><a href="#">Manage Users</a></li>
            <li><a href="#">Payment History</a></li>
        </ul>
    </aside>
    <main class="content">
    	<div class="dash-body">

    <div class="dash-part bg-blue dash-part-style">
        <div class="dash-part-title">Number of Users</div>
        <div class="dash-part-amount">1000</div>
    </div>

    <div class="dash-part bg-green dash-part-style">
        <div class="dash-part-title">Average Profit</div>
        <div class="dash-part-amount">30000 per Day</div>
    </div>

    <div class="dash-part bg-red dash-part-style">
        <div class="dash-part-title">Number of Drivers</div>
        <div class="dash-part-amount">460</div>
    </div>
    <div class="dash-part bg-purple dash-part-style">
        <div class="dash-part-title">Number of Vehicles</div>
        <div class="dash-part-amount">450</div>
    </div>
</div>
<hr>

<h3 class="hero-title">Manage Users</h3>
<table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Province</th>
            <th>City</th>
            <th>Contact Number</th>
            <th>Gender</th>
            <th>Password</th>
            <th>User Type</th>
            <th>Actions</th>
        </tr>
<%
	ReadUser user = new ReadUser();
    List<ReadUser> data2 = user.get_values();
    
    for (ReadUser userdata : data2) {
%> 
        <tr>
            <td><%= userdata.getFirst_name() %></td>
            <td><%= userdata.getLast_name() %></td>
            <td><%= userdata.getEmail() %></td>
            <td><%= userdata.getProvince() %></td>
            <td><%= userdata.getCity() %></td>
            <td><%= userdata.getContact_no() %></td>
            <td><%= userdata.getGender() %></td>
            <td><%= userdata.getPassword() %></td>
            <td><%= userdata.getUser_type() %></td>
            <td>
            <form action="update_user_form.jsp?email=<%= userdata.getEmail() %>" method="post" class="action_form">
        		<button class="btn btn-edit">Edit <i class="fa fa-edit"></i></button>
    		</form>
        
    		<form action="delete_user.jsp?email=<%= userdata.getEmail() %>" method="post" class="action_form">
        		<input type="hidden" value="<%= userdata.getEmail() %>">
    			<input type="submit" value="Delete" class="btn btn-delete">
			</form>
            </td>
        </tr>
<% 
    }
%> 
</table>
<button class="manage_btn"><a href="users_add_form.jsp">Add Users</a></button>

<hr class="hr-div">
<h3 class="hero-title">Manage Vehicles</h3>
<table>

        <tr>
             <th>Vehicle Number:</th>               
             <th>Brand:</th>                
             <th>Model:</th>
             <th>Type:</th>               
             <th>Color:</th>
             <th>Year:</th>               
             <th>Price Per Hour:</th>
             <th>&nbsp;&nbsp;&nbsp;&nbsp;</th>
             <th>Actions</th>
        </tr>
<%
    ReadVehicle vehicle = new ReadVehicle();
    List<ReadVehicle> data1 = vehicle.get_values();
    
    for (ReadVehicle vehicledata : data1) {
%> 
        <tr>
            <td><%= vehicledata.getVehicle_number() %></td>
    		<td><%= vehicledata.getBrand()%></td>
    		<td><%= vehicledata.getModel() %></td>
    		<td><%= vehicledata.getType() %></td>
    		<td><%= vehicledata.getColor() %></td>
    		<td><%= vehicledata.getV_year() %></td>
    		<td><%= vehicledata.getPrice_hour() %></td>
    		<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td>
                <button class="btn btn-edit">Edit</button>
                <button class="btn btn-delete">Delete</button>
            </td>
        </tr>
 <% 
    }
%> 
</table>
<button class="manage_btn"><a href="vehicle_add_form.jsp">Add Vehicle</a></button>

<hr class="hr-div">
<h3 class="hero-title">Manage Drivers</h3>
<table>
  		<tr>
    		<th>First Name</th>
    		<th>Last Name</th>
			<th>Province</th>
    		<th>City</th>
    		<th>Email</th>
    		<th>Contact No</th>
    		<th>Gender</th>
    		<th>Price Per Hour</th>
    		<th>Actions</th>
		</tr>
<%
	ReadDriver driver = new ReadDriver();
    List<ReadDriver> data = driver.get_values();
    
    for (ReadDriver driverdata : data) {
%> 
        <tr>
            <td><%= driverdata.getFist_name() %></td>
    		<td><%= driverdata.getLast_name() %></td>
    		<td><%= driverdata.getProvince() %></td>
    		<td><%= driverdata.getCity() %></td>
    		<td><%= driverdata.getEmail() %></td>
    		<td><%= driverdata.getContact_no()%></td>
    		<td><%= driverdata.getGender() %></td>
    		<td><%= driverdata.getPrice() %></td>
            <td>
                <button class="btn btn-edit">Edit</button>
                <button class="btn btn-delete">Delete</button>
            </td>
        </tr>
<% 
    }
%>
</table>
<button class="manage_btn"><a href="driver_add_form.jsp">Add Driver</a></button>

    </main>
</body>
</html>
