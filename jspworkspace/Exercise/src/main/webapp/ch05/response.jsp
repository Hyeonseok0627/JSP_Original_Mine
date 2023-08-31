<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Locale"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setIntHeader("Refresh", 5);
		Calendar calendar = Calendar.getInstance(new Locale("ko")); //Calendar은 싱글톤 패턴이라 new로 하지않고 기존 유일한 인스턴스를 가지고 오는 개념 / ctrl+space 키 입력 시, 선택하여 import하면 사용가능
		String str =
				calendar.get(Calendar.HOUR_OF_DAY)
				+":"+calendar.get(Calendar.MINUTE)
				+":"+calendar.get(Calendar.SECOND)
				+" "+(calendar.get(Calendar.AM_PM)==0?"AM":"PM"); //AM, PM 출력
	%>
	<p>현재 시간은 <%=str%></p>
	<p><a href="response_data.jsp">Google 홈페이지로 이동하기</a>
</body>
</html>