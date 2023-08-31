<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting Tag</title>
</head>
<body>

	<%
		String date = new java.util.Date().toLocaleString();//toLocaleString: ToDay : 2023. 8. 23. 오전 9:32:35 이런식으로 한국시간표식으로 나타냄
		out.println("ToDay : " +date);
	%>
	<%--위에랑 또 다른 코드방식 --%>
	<%--<% java.util.Date date = new java.util.Date();//util은 import쓰지않고 불러오는 것
		out.print("Today : " + date);
	%>--%>
</body>
</html>