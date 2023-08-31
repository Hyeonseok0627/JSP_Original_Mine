<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>

	<h2>include 액션 태그</h2>
		<%--include 액션 태그: 기존의 include 데이터 포함시켜, 불러오는 해당 jsp 파일 데이터와 함께 출력 --%>
		<%--include 디렉티브 태그는 가져오는 다른 페이지의 내용이 텍스트로 포함됨(즉, 해당 코드 자체로 가지고 옴)
		하지만, include 액션 태그는 가져오는 다른 페이지의 내용이 코드 결과값 형태로 포함됨(즉, 해당 코드의 결과값을 코드로 가져옴 )--%>
	<jsp:include page="include_date.jsp" flush= "true" />
	<p>---------------------------------------</p>
</body>
</html>