<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting tag</title>
</head>
<body>

	<h2>Scripting tag</h2>
	
	<%--<%! 선언문 %> --%>
	<%! int count = 3;
		String makeItLower(String data) {
			return data.toLowerCase();
		}
	%>
	
	<%--<% 스크립틀릿 : 자바 로직문(메서드 등의 구현부분), 실행문 %> --%>
	<% for (int i=1; i<=count; i++) {
		out.println("Java Server Pages " + i + ".<br>");
		}
	%>
	
	<%--<%=실행결과(스클립틀릿에서 만든 로직문이나 실행문에 파라미터를 넣고 실행하는 결과가 나오는 부분) %> --%>
	<%=makeItLower("Hello World")%>
	
</body>
</html>