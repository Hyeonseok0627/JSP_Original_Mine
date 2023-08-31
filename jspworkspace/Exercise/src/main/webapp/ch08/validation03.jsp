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

			var check = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;

			if(!check.test(form.password.value)) {
				alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다..!");
				form.password.select();
				return;
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
	
	<form action="validation03_process.jsp" method="POST" name="loginForm">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="text" name="password"></p>
		<p>비밀번호 확인 : <input type="text" name="password_check"></p>
		<input type="button" value="전송" onclick="formCheck()">
	</form>

</body>
</html>