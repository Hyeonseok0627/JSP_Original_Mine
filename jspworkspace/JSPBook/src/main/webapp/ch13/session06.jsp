<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<h4>-------- 세션을 삭제하기 전 ---------</h4>
	<%
		String user_id = (String) session.getAttribute("userID"); //getAttribute의 return값은 object형이므로 (String)으로 다운캐스팅하여 형변환해줘야 함
		String user_pw = (String) session.getAttribute("userPW");
	
		out.println("설정된 세션의 속성 값 [1] : " + user_id + "<br>"); //session01.jsp 에서 세션설정이 성공한 상태에서 진행해야 제대로된 값이 출력이 됨
		out.println("설정된 세션의 속성 값 [2] : " + user_pw);
	
		if (request.isRequestedSessionIdValid() == true) {
			out.println("세션이 유효합니다.");
		} else {
			out.print("세션이 유효하지 않습니다.");
		}
		
		session.invalidate(); //세션 안에 있는 모든 데이터를 삭제해줌
	%>
	<h4>-------- 세션을 삭제한 후 ---------</h4>
	<%
		if (request.isRequestedSessionIdValid() == true) {
			out.println("세션이 유효합니다.");
		} else {
			out.print("세션이 유효하지 않습니다.");
		}
	%>
</body>
</html>