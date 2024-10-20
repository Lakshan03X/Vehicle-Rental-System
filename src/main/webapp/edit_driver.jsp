<%@page import="driver.EditDriver"%>
<%@page import="driver.StoreDriver"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<% 
String fist_name = request.getParameter("first_name");
String last_name = request.getParameter("last_name");
String province = request.getParameter("province");
String city = request.getParameter("city");
String email = request.getParameter("email");
String contact_no = request.getParameter("contact_no");
String gender = request.getParameter("gender");
String price = request.getParameter("price_per_hour");

StoreDriver updateDriver = new StoreDriver();

updateDriver.setFist_name(fist_name);
updateDriver.setLast_name(last_name);
updateDriver.setProvince(province);
updateDriver.setCity(city);
updateDriver.setEmail(email);
updateDriver.setContact_no(contact_no);
updateDriver.setGender(gender);
updateDriver.setPrice(price);


EditDriver update=new EditDriver();
update.edit_user(updateDriver);
%>
</body>
<h1>Account Updated Successfully ! <a href="driver_page.jsp">Back to dashboard</a> </h1>
<script type = "text/javascript">
		alert("Account Updated Successfully !");
</script>

</html>