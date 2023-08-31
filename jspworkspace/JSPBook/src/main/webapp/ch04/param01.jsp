<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<h3>param 액션 태그</h3>
	<%--해당 내용을 param01_data로 보내서 거기 페이지에서 읽어서 주소창에 출력함 --%>
	<jsp:forward page="param01_data.jsp">
	<jsp:param name = "id" value = "admin" />
	<%--데이터를 보낼 때는 주소창에 해당 내용이 적히는 것이라 주소창에 한글 문자가 있으면 못 읽고 에러가 나므로 coding을 해줘서 param01_data로 보냄 --%>
	<jsp:param name = "name" value = '<%=java.net.URLEncoder.encode("관리자") %>' />
	</jsp:forward>
	<p>Java Server Page
</body>
</html>