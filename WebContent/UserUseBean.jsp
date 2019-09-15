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

<jsp:useBean id="userinfo" class="bean.User" scope="request">
     <jsp:setProperty property="*" name="userinfo"/>
</jsp:useBean>

<%
String age = request.getParameter("age");
int a = Integer.parseInt(age);
if(a<18){
    throw new Exception("InvalidAgeException");
}
else{
String Topic = request.getParameter("topic");
session.setAttribute("topic", Topic);
UserDAO obj = new UserDAO();
obj.insert(userinfo);

%>
  	<jsp:forward page="HomePage.jsp"></jsp:forward>
<%
}
 %>
</body>
</html>