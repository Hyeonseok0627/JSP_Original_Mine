<%@page import="java.util.Enumeration"%>
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
		StringBuffer str = new StringBuffer();
		Enumeration en = request.getParameterNames();
		while(en.hasMoreElements()){
			String name = (String)en.nextElement();
			str.append("<p>"+ name +" :" + request.getParameter(name) + "</p>");
		}
	%>
	<%= str%>
</body>
</html>







