<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="homepage"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
<%--대형 프로젝트 시, 사용하는 기능
요청에 따른 응답 시 해당 용량만큼 모았다가 출력해주는 기능 --%>
	<%@ page buffer= "16kb" %>
	Today is: <%= new java.util.Date() %>
	<br><%= getServletInfo() %>
</body>
</html>