<%@page import="vehicle.EditVehicle"%>
<%@page import="vehicle.StoreVehicle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Vehicle</title>
</head>
<body>
<%
    String vehicle_number = request.getParameter("vehicle_number");
    String brand = request.getParameter("brand");
    String model = request.getParameter("model");
    String type = request.getParameter("type");
    String color = request.getParameter("color");
    String v_year = request.getParameter("v_year");
    String price_hour = request.getParameter("price_hour");

    StoreVehicle updateVehicle = new StoreVehicle();

    updateVehicle.setVehicle_number(vehicle_number);
    updateVehicle.setBrand(brand);
    updateVehicle.setModel(model);
    updateVehicle.setType(type);
    updateVehicle.setColor(color);
    updateVehicle.setV_year(v_year);
    updateVehicle.setPrice_hour(price_hour);

    EditVehicle update = new EditVehicle();
    update.edit_vehicle(updateVehicle);
%>

<h1>Vehicle Updated Successfully!</h1>
<a href="vehicle_page.jsp">Back to Dashboard</a>
</body>
</html>
