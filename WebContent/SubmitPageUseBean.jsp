<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="bean.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="submitinfo" class = "bean.User" scope="request">
   <jsp:setProperty property="*" name= "submitinfo"/>
</jsp:useBean>
<%
UserDAO obj = new UserDAO();
ResultSet rs = obj.getAllQues("");
String topic = (String)session.getAttribute("topic3");
String username = (String)session.getAttribute("USERNAME");
//String ab = rs.getString(1);
int marks=0;
 int i=1;
 while(rs.next()){
	 if(rs.getString(1).equals(topic)){
		 String ques = "ques";
		 ques = ques+ Integer.toString(i);
		 String s1 = request.getParameter(ques);
		 if(s1==null){
			 s1 = s1+'e';
		 }
		 if(s1.equals(rs.getString(7))){
			 marks++;
		 }
		 i++;
	 }
	 
 }
 i--;
 if(marks>i/2){
%>
   <h2 style="text-align:center; color:green;">Congratulations <%=username %></h2>
   <h3 style="text-align:center;">You got <%=marks%> marks out of <%=i %></h3>
  <%  if(marks==i){%>
   <div style="background-color:blue;color:white; padding:20px; text-align:center;">
  <h2>You got a free movie ticket</h2>
  <h2><%=LocalDate.now() %></h2>
</div> 
   <%}}
 else{
 %>
 <h2 style="text-align:center; color:red; ">Failed </h2>
 <% if(marks==1){%>
  <h3 style="text-align:center;">You got <%=marks%> mark out of <%=i %></h3>
  <%}
 else {%>   <h3 style="text-align:center;">You got <%=marks%> marks out of <%=i %></h3>
 <%} %>
  <h4  style="text-align:center;">
  <a href="DisplayQuiz.jsp"  >Please Retry after 10 day</a></h4>
  <%} %>
</body>
</html>