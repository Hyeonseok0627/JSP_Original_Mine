<%--MySQL에 저장된 테이블값의 아이디 중에서 수정할 것을 선택하여 "이름"값을 변경한 후 전송 누르면 원래 테이블 데이터 중 "이름"값이 변경됨(MySQL에서 확인 가능) --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database SQL</title>
</head>
<body>
	<form method="post" action="update02_process.jsp">
		<p>아이디 : <input type="text" name="id">
		<p>비밀번호 : <input type="password" name="passwd">
		<p>이름 : <input type="text" name="name">
		<p><input type="submit" value="전송">
	</form>
</body>
</html>