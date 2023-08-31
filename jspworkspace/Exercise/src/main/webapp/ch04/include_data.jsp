<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--해당 데이터만 작성하고 나머지는 없애도 가능 / 해당 데이터만 돌리는 부분이라서 가능 --%>
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		for(int i=1; i<=9; i++) {
			out.println(num + " * " + i +" = " + num*i + "<br>");
		}
	%>
</body>
</html>