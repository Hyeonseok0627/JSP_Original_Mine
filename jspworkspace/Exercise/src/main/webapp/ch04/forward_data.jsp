<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward_data</title>
</head>
<body>
	<%
		int num = Integer.parseInt(request.getParameter("num")); //parseInt: string -> int로 변환시켜줌
		for(int i=1; i<=9; i++) {
			out.println(num + " * " + i +" = " + num*i + "<br>");
		}
	%>
</body>
</html>