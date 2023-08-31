<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		
		for (int i = 0; i < cookies.length; i++) {
			cookies[i].setMaxAge(0); //Cookie 클래스는 Session 클래스의 remove() 메서드처럼 삭제 기능이 없어서 유효기간을 나타내는 setMaxAge(0)메서드 사용하여 유효기간이 0로 해서 쿠키를 삭제함
			response.addCookie(cookies[i]);
		}
		response.sendRedirect("cookie02.jsp");
	%>
</body>
</html>