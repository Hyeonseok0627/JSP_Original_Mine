<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	
		request.setCharacterEncoding("UTF-8");
		StringBuffer str = new StringBuffer(); //StringBuffer 사용하면 같은 메모리 주소에 string값을 계속 추가할 수 있음
		Enumeration en = request.getParameterNames(); //Enumeration의 반환값 자체가 names로 해야해서 이렇게 사용해야함
		while(en.hasMoreElements()) {
			String name = (String)en.nextElement();
			str.append("<p>" + name + " :" + request.getParameter(name) + "</p>");
		}
	%>
</body>
</html>