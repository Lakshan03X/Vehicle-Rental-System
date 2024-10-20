<%@page import="vehicle.EditVehicle"%>
<%@page import="vehicle.StoreVehicle"%>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%@ page import="vehicle.ReadVehicle" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="Css/vehicle_page.css">
<style>
.form-container{
margin-top:40px;
}
</style>
</head>
<body>

<%
	String vehicle_number=(String)request.getParameter("vehicle_number");
	EditVehicle obj_Edit_values = new EditVehicle();
	StoreVehicle data = obj_Edit_values.get_value(vehicle_number);
%>


   <div class="form-container">
        <form action="edit_vehicle.jsp?vehicle_number=<%= vehicle_number %>" method="post">
            <div class="form-row">
            	<div class="form-column">
                    <label>Vehicle Number:</label>
                    <input type="text" name="vehicle_number" placeholder="Enter vehicle number" class="form-input" value="<%= data.getVehicle_number() %>">
                </div>
            <div class="form-column">
                <label>Brand:</label>
                <input type="text" name="brand" placeholder="Enter vehicle brand" class="form-input"
                       value="<%= data.getBrand() %>">
            </div>
            <div class="form-column">
                <label>Model:</label>
                <input type="text" name="model" placeholder="Enter vehicle model" class="form-input"
                       value="<%= data.getModel() %>">
            </div>
        </div>
        <div class="form-row">
            <div class="form-column">
                <label>Type:</label>
                <input type="text" name="type" placeholder="Enter vehicle type" class="form-input"
                       value="<%= data.getType() %>">
            </div>
            <div class="form-column">
                <label>Color:</label>
                <input type="text" name="color" placeholder="Enter vehicle color" class="form-input"
                       value="<%= data.getColor() %>">
            </div>
        </div>
        <div class="form-row">
            <div class="form-column">
                <label>Year:</label>
                <input type="text" name="v_year" placeholder="Enter vehicle year" class="form-input"
                       value="<%= data.getV_year() %>">
            </div>
            <div class="form-column">
                <label>Price Per Hour :</label>
                <input type="text" name="price_hour" placeholder="Enter the price per hour" class="form-input"
                       value="<%= data.getPrice_hour() %>">
            </div>
        </div>
        <input type="submit" value="Submit" class="submitbtn">
        </form>
    </div>

</body>
</html>