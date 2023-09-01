<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%! 
		String makeItLower(String data){
			return data.toLowerCase();
		}
	%>
	Hello World를 소문자로 표시
	<%
		out.println(makeItLower("Hello World"));
	%>
</body>
</html>







