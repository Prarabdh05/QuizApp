<%@page import="bean.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="quizinfo"  class = "bean.User" scope = "request">
   <jsp:setProperty property="*" name="quizinfo"/>
</jsp:useBean>
<%

 UserDAO obj = new UserDAO();
   boolean b = obj.ValidateUser(quizinfo);
String arg1 = (String)session.getAttribute("topic1");
session.setAttribute("topic2", arg1);
String arg2 = request.getParameter("username");
session.setAttribute("username", arg2);


   if(b){
	   
	   %>
	   <jsp:forward page="DisplayQuiz.jsp"></jsp:forward>
	   <% 
	   
	   
   }
   else{%>
  	<jsp:forward page="HomePage.jsp"></jsp:forward>
	   <% 
   }
   
%>
</body>
</html>