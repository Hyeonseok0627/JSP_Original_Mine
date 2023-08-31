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
			} else if (form.password.value == "") {
				alert("비밀번호를 입력해주세요..!");
				form.password.focus();
				return;
			} else if(form.password_check.value == "") {
				alert("비밀번호 재확인을 입력해주세요..!");
				form.password_check.focus();
				return;
			} 

			const passwd = String(form.password.value);

			<%--왜 해당 메시지는 안 뜨는 지 해결하기--%>
			for (i = 0; i < passwd.length -2; i++) {
				if(passwd[i] == passwd[i+1] && passwd[i+1] == passwd[i+2]) {
					alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다..!");
					form.password.select();
					return;
				}
			}
			
			if (form.password.value != form.password_check.value) {
				alert("비밀번호와 비밀번호 확인을 서로 다르게 입력하였습니다..!");
				form.password.select();
				return;
			}

			form.submit();

		}
	</script>
</head>
<body>
	
	<form action="validation02_process.jsp" method="POST" name="loginForm">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="text" name="password"></p>
		<p>비밀번호 확인 : <input type="text" name="password_check"></p>
		<input type="button" value="전송" onclick="formCheck()">
	</form>

</body>
</html>