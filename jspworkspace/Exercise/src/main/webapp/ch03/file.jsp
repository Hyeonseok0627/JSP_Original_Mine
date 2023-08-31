<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>

	<%@ page import = "java.util.Date" %>
	현재 날짜 : <%= new Date() %>
	<%--Math는 String과 같이 자동으로 불러오므로 import를 안해도 불러올 수 있음 --%>
	<br><%@ page import = "java.lang.Math" %>
	5의 제곱 : <%= Math.pow(5,2) %>
</body>
</html>