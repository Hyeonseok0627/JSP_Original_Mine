<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<h3>회원 가입</h3>
	<%--method="post" : 내가 입력창에 입력한 값이 주소창에 뜨지 않음 "get": 내가 입력창에 입력한 값이 주소창에 뜨게 해서 올바르게 치고 있는지 확인 가능 --%>
	<form action="#" name="member" method="post">
	<%--placeholder: 아무것도 입력 안한 초기 상태일 때 ""안에 있는 해당 글자가 뜨면서 입력차에 칠 내용을 알려주는 표시 --%>
		<p> 아이디 : <input type="text" name="id" placeholder="아이디">
					<input type="submit" value="아이디 중복 체크">
		<p> 비밀번호 : <input type="password" name="passwd"> 
		<p> 이름 : <input type="text" name="name"> 
		<%--maxlength: 최대 입력 글자크기, size: 입력창 네모박스 크기 --%>
		<p> 연락처 : <input type="text" maxlength="4" size="4" name="phone1">
			- <input type="text" maxlength="4" size="4" name="phone2">
			- <input type="text" maxlength="4" size="4" name="phone3"> 
		<p> 성별 : <input type="radio" name="sex" value="남성" checked>남성
				  <input type="radio" name="sex" value="여성" >여성		
		<p> 취미 : 독서<input type="checkbox" name="hobby1" checked>
				  운동<input type="checkbox" name="hobby2" >
				  영화<input type="checkbox" name="hobby3" >
		<p> <input type="submit" value="가입하기">
			<input type="reset" value="다시 쓰기"> 
		</form>
</body>
</html>