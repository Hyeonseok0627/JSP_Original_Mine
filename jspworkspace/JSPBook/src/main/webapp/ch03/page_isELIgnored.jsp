<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>

	<%
		request.setAttribute("RequestAttribute", "request 내장 객체"); //request는 많은 정보가 있는 list 종류 / 여기에선 그중 setAttribute("RequestAttribute", "request 내장 객체") 이런 내용을 설정해서 가지고 온다는 개념
	%>
	<%--true하면 위에 해당 request 언어를 사용할 수 없게 한 것이라 밑에 글이 출력
	false하면 위에 해당 request 언어를 사용하게 허용되니 "request 내장 객체" 이게 출력 --%>
	${requestScope.RequestAttribute}
</body>
</html>