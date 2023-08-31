<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<h2>forward 액션 태그</h2>
	<%--forward 액션 태그: 기존의 forward 데이터는 다 지우고, 불러오는 해당 jsp 파일 데이터만 출력 --%>
	<jsp:forward page = "forward_date.jsp" />
	<p>--------------------------------</p>
</body>
</html>