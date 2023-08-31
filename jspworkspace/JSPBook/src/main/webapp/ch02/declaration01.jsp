<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting Tag</title>
</head>
<body>
	<%--jsp는 html 중 body에 (필히 자바문법으로 해야 오류가 안남)자바문법의 내용을 넣어서 동적으로 만들어주는 것 --%>
	<%--해당 멤버변수인 int data는 선언문에 들어가면 전역변수로 됨 --%>
	<%! int data = 50; %>
	<%
		out.println("Value of the variable is:" + data); //html에 출력해주는 것
	%>
</body>
</html>