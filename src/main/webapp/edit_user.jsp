<%@page import="admin.EditUser"%>
<%@page import="admin.StoreUser"%>
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
String first_name = request.getParameter("f_name");
String last_name = request.getParameter("l_name");
String province = request.getParameter("province");
String city = request.getParameter("city");
String email = request.getParameter("email");
String contact_no = request.getParameter("contact_no");
String gender = request.getParameter("gender_type");
String password = request.getParameter("password");
String user_type = request.getParameter("user_type");

StoreUser updateuser = new StoreUser();

updateuser.setFirst_name(first_name);
updateuser.setLast_name(last_name);
updateuser.setProvince(province);
updateuser.setCity(city);
updateuser.setEmail(email);
updateuser.setContact_no(contact_no);
updateuser.setGender(gender);
updateuser.setPassword(password);
updateuser.setUser_type(user_type);


EditUser update=new EditUser();
update.edit_user(updateuser);
%>
</body>
<h1>Account Updated Successfully ! <a href="admin_page.jsp">Back to dashboard</a> </h1>
<script type = "text/javascript">
	var sts = document.getElementById("status").value;
	if (sts == "success") {
		alert("Account Updated Successfully !");
	}
</script>

</html>