<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<%
		Enumeration en = request.getHeaderNames(); //Enumeration: 리스트 종류 , a=b: b의 내용이 a에 대입된다는 개념
		while (en.hasMoreElements()) {
			String headerName = (String) en.nextElement();
			String headerValue = request.getHeader(headerName);
	%>
	<%=headerName%> : <%=headerValue%><br>
	<%
		}
	%>
</body>
</html>