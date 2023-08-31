<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--method = "post" : 본인이 입력한 값이 결과값의 주소창에서 안 보임 / "get" : 본인이 입력한 값이 결과값의 주소창에서 보임 --%>
	<form action = "request01_process.jsp" method = "post">
		<p>아이디 : <input type = "text" name = "id"> </p>
		<p>비밀번호 : <input type = "password" name = "passwd"> </p>
		<p> <input type = "submit" value = "전송" />	
	</form>
</body>
</html>