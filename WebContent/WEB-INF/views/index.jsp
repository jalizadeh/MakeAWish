<%@ page import="com.makeawish.models.Users" %>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Make A Wish - Javad Alizadeh</title>
</head>
<body>
	<h1>List of users:</h1>
	
	
		<% 
			List<Users> allUsers = (List<Users>) request.getAttribute("allUsers");
			for(Users user : allUsers){
		%>
			<p> <%= user.getFirstName() + " " + user.getLastName() %> </p>
		<%
			}
		 %>
	
</body>
</html>