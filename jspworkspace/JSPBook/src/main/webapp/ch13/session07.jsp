<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<%--세션 유효시간 기본값: 30분  / 단위는 초로 계산 / 홈페이지 로그인 한번하면 어느정도 있다가 만료되서 재로그인 하도록 할 때 해당 기능 사용--%>
	<h4>-------- 세션 유효 시간 변경 전 ------------</h4>
	<%
		int time = session.getMaxInactiveInterval() / 60;
		
		out.println("세션 유효 시간 : " + time + "분<br>");
	%>
	<h4>-------- 세션 유효 시간 변경 후 ------------</h4>
	<%
		session.setMaxInactiveInterval(60*60);
		time = session.getMaxInactiveInterval() / 60;
		
		out.println("세션 유효 시간 : " + time + "분<br>");
	%>
</body>
</html>