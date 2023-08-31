<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script>
		function formCheck() {
			const form = document.loginForm;

			if(form.id.value == "") {
				alert("아이디를 입력해주세요..!");
				form.id.focus();
				return;
			} 

			if(form.password.value == "") {
				alert("비밀번호를 입력해주세요..!");
				form.password.focus();
				return;
			} 

			form.submit();

		}
	</script>
</head>
<body>
	
	<form action="validation01_process.jsp" method="POST" name="loginForm">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="text" name="password"></p>
		<input type="button" value="전송" onclick="formCheck()">
	</form>
</html>