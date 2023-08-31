<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
	<%--jstl 활용 --%>
	<%--회사에서 이것 활용하는 경우가 많으니 알아두기 --%>
	<c:forEach var="k" begin="0" end ="10" step="2">
		<c:out value="${k}" />
	</c:forEach>
	
	<%--자바 for문 활용 --%>
	<br><%
		for(int i=0; i<=10; i+=2) {
			out.print(i+" ");
		}
	%>
</body>
</html>