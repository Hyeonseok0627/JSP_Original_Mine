<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="gugudan" class="ch04.com.dao.GuGuDan" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<h3>구구단 출력하기</h3>
	<%
	out.print(gugudan.process(5));
	%>
</body>
</html>