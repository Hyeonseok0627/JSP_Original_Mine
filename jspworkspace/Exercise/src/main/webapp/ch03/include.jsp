<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
	<%@ include file = "header.jsp" %>
	<%--둘다 같은 결과값이 나옴 --%>
	<p>현재 시간 : <%= java.util.Calendar.getInstance().getTime().toString() %></p>
	<p><%= "현재 시간 :" + java.util.Calendar.getInstance().getTime().toString() %></p>
</body>
</html>