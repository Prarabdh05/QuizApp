<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align:center;">Quiz User Registration</h1>
<form  style="text-align:center;" action="UserUseBean.jsp">
Username <input type = "text" name = "username" value = "Prarabdh"></br>
Password <input type = "password" name = "password"  value = "password"></br>
Age <input type = "text" name = "age" value = "22"></br>
Topic 
<select name = "topic">
  <option value="GK">GK</option>
  <option value="Movies">Movies</option>
</select>
<input type = "submit" value = "Register">
</form>
</body>
</html>