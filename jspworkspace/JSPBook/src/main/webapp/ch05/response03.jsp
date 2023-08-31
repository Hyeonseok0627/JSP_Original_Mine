<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<%--원래는 404 에러코드는 해당 에러 발생 시 나오는 것이지만 이렇게 직접 입력해서 해당 에러 페이지 나오게 할 수도 있음 / 메시지에 ""값으로 출력도 가능--%>
	<%
		response.sendError(404, "요청 페이지를 찾을 수 없습니다.");
	%>
</body>
</html>