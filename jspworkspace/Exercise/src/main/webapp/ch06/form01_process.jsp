<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	request.setCharacterEncoding("UTF-8");
		StringBuffer str = new StringBuffer();
		str.append("<p>아이디 : " + request.getParameter("name"));
		str.append("<p>주소 : " + request.getParameter("address"));
		str.append("<p>이메일 : " + request.getParameter("email"));
	%>

	<%=str %>
</body>
</html>