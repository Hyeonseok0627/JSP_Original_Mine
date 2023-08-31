<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<%
		String user_id = (String) session.getAttribute("userID"); //getAttribute의 return값은 object형이므로 (String)으로 다운캐스팅하여 형변환해줘야 함
		String user_pw = (String) session.getAttribute("userPW");
	
		out.println("설정된 세션의 속성 값 [1] : " + user_id + "<br>"); //session01.jsp 에서 세션설정이 성공한 상태에서 진행해야 제대로된 값이 출력이 됨
		out.println("설정된 세션의 속성 값 [2] : " + user_pw);
	%>
</body>
</html>