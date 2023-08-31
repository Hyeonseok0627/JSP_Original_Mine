<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
<%--sendRedirect() 메서드: 메인페이지, 이전페이지로 돌아오게 만들 때 사용함 --%>
	<%
		request.setCharacterEncoding("utf-8");//한글을 utf-8로 번역해서 보내줘야 오류가 안남(그래서 입력창에 한글을 입력 시, 해당 작업이 필요)
		String userid = request.getParameter("id"); //"id"라는 파라미터를 가지고 오도록 요청하는 코드
		String password = request.getParameter("passwd"); //"passwd"라는 파라미터를 가지고 오도록 요청하는 코드
		
		if (userid.equals("관리자") && password.equals("1234")) {
			response.sendRedirect("response01_success.jsp"); //해당 변수 입력시, response01_success.jsp 페이지로 이동하도록 응답하는 코드 
		} else {
			response.sendRedirect("response01_failed.jsp"); //해당 변수 입력시, response01_failed.jsp 페이지로 이동하도록 응답하는 코드
		}
	%>
</body>
</html>