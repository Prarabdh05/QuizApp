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

<h1 style="text-align:center;">Quiz Page</h1>
<hr>
	<%
		UserDAO u = new UserDAO();
	   String arg2 = (String)session.getAttribute("topic2"); 
	   session.setAttribute("topic3", arg2);
	   String arg1 = (String)session.getAttribute("username");
	   session.setAttribute("USERNAME", arg1);
		ResultSet rs = u.getAllQues("");
		int i = 1;%>
		
		<form action="SubmitPageUseBean.jsp">
<%
		while (rs.next()) {
			if(rs.getString(1).equals(arg2))
      		{    	
		%>
			<%=i + ". " + rs.getString(2)%>
			<ul>	
               <input type="radio" name="ques<%=i%>" value = "a"><%=rs.getString(3)%></br>
				<input type="radio" name="ques<%=i%>" value = "b"><%=rs.getString(4)%></br>
				<input type="radio" name="ques<%=i%>" value = "c"><%=rs.getString(5)%></br>
				<input type="radio" name="ques<%=i%>" value = "d"><%=rs.getString(6)%></br>        
			</ul>
	
		<%  i++;
      		}
			
			}
		%>
	<input type = "submit" value= "Submit">
	</form>
</body>
</html>