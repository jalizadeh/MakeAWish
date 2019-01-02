<%@page import="com.makeawish.models.Users"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
</head>
<body>
	<% List<Users> allUsers = (List<Users>)request.getAttribute("allUsers"); %>
	<% for(Users u : allUsers){ %>
		<%= u.toString() + "<br/><br/>" %>
	<% } %>
</body>
</html>