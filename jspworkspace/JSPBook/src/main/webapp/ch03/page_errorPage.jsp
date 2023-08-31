<%--에러 페이지의 소스코드들이 나오는 화면을 유저에게 보여주는 건 아니니깐
이렇게 에러문구가 적힌 페이지를 만들고 이것을 보여주도록 하는 방법이 <%@ page errorPage="page_errorPage_error.jsp" %> 이 방식--%>
<%--자바에서 예외처리하는 것이랑 좀 유사함, 에러가 떠도 해당 에러페이지가 나오도록 동작을 계속하게 만든다는 점에서 예외가 나와도 해당 동작을 할 수 있게한 예외처리랑 유사 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="page_errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
	<%
		String str = null;
		out.println(str.toString());
	%>
</body>
</html>