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
		request.setCharacterEncoding("UTF-8");
	%>
	<p><%= request.getParameter("id")%></p>
	<p><%= request.getParameter("name")%></p>
	<p><%= request.getParameter("passwd")%></p>
	<p><%= request.getParameter("phone1")%>
		-<%= request.getParameter("phone2")%>
		-<%= request.getParameter("phone3")%></p>
	<p><%= request.getParameter("email")%></p>
	
</body>
</html>








