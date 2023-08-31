<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<p> 이 페이지는 5초마다 새로고침 됩니다.
	
	<%--응답 HTTP 헤더 관련 메서드
	해당 바꾼 내용은 웹브라우저 -> F12키(개발자 창) -> Network -> 해당 jsp 선택 -> Headers 선택 -> 여기에 있는 내용 중 Refresh 부분을 수정한 것 --%>
		<%
			response.setIntHeader("Refresh", 3000);
		%>
	<p> <%=(new java.util.Date()) %>
</body>
</html>