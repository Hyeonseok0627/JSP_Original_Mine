<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting Tag</title>
</head>
<body>

	<%! String makeItLower(String data) {
		return data.toLowerCase(); //자바의 해당 이런 기본 메서드는 사용가능
	} %>
	
	Hello World를 소문자로 표시<br>
	<%--스크립틀릿(java형으로 변형된 파일의 JSP Service() 메서드를 실행하는 내용) 안에는 자바문법만 작성해야하며, 자바문법이 아닌 내용은 위에처럼 스크립틀릿 밖에 작성해야함 --%>
	<%
		out.println(makeItLower("Hello World"));
	%>
</body>
</html>