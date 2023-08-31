<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
<%--useBean 액션 태크 사용하는 이유: java 클래스를 불러와서 jsp 내에서의 java로 구현하는 코드 부분의 간소화 실현 --%>
	<jsp:useBean id="date" class="java.util.Date" />
	<p> <%
			out.print("오늘의 날짜 및 시각");
		%>
	</p>
	<p><%=date %></p>
</body>
</html>