<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive Tag</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<p>현재시간 : <%= java.util.Calendar.getInstance().getTime().toString() %></p>
</body>
</html>










