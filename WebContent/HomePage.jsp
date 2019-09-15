<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
  String Topic = (String)session.getAttribute("topic");
session.setAttribute("topic1", Topic);
%>
	<h1 style="text-align: center;">Quiz Login</h1>
	<form style="text-align: center;" action="QuizLoginUseBean.jsp">
		Username <input type="text" name="username" value = "Prarabdh"></br> Password <input
			type="password" name="password" value = "password"></br> 
			<input type="submit"
			value="Login">
	</form>
	<hr>

</body>
</html>