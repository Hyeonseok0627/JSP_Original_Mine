<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting Tag</title>
</head>
<body>
	<%--java 기본 클래스인 생성자를 가지고와서 새로운 객체 생성(새로운 인스턴스가 생김)으로 현재 일자를 불러올 수도 있음 --%>
	<p> Today's date: <%= new java.util.Date() %></p>
</body>
</html>