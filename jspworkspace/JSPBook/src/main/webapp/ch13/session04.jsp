<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<h4>--------- 세션을 삭제하기 전 ----------</h4>
	<%
		String user_id = (String) session.getAttribute("userID");
		String user_pw = (String) session.getAttribute("userPW");
		out.println("설정된 세션 이름 userID : " + user_id + "<br>");
		out.println("설정된 세션 이름 userPW : " + user_pw + "<br>");
		
		session.removeAttribute("userID"); //속성값을 다 삭제함(새로고침하면 해당 삭제 메서드가 실행되서 user_id, user_pw 이 부분만 사라지는 것이라 이 값만 null로 표시되고 다른 값들은 존재함 / session05와 비교가 됨)
	%>
	<h4>--------- 세션을 삭제한 후 -----------</h4>
	<%
		user_id = (String) session.getAttribute("userID");
		user_pw = (String) session.getAttribute("userPW");
		out.println("설정된 세션 이름 userID : " + user_id + "<br>");
		out.println("설정된 세션 이름 userPW : " + user_pw + "<br>");
	%>
</body>
</html>