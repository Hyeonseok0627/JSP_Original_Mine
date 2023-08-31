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
		for(int i=0; i<=10; i++) {
			if(i %2 == 0) {
				out.println(i + "<br>");
			}
		}
	out.print("asd"); // 스크립틀릿 안에 표현문 태그 내용을 넣을 때는 이렇게 작성
	%>
	<%--표현문 태그 --%>
	<%="asd"%> 
</body>
</html>