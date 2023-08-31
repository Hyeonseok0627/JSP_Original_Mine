<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
<%--이것자체는 실행이 안되게 되어있어 이 페이지 자체는 에러가 뜸 
이 페이지의 파라미터를 활용한 param01 페이지가 정상작동함--%>
<%--getParameter("id") : "admin"을 가지고 옴 , getParameter("name") : "관리자"를 가지고 옴 --%>
	<p> 아이디 : <%=request.getParameter("id") %>
		<%
			String name = request.getParameter("name");
		%>
			<%--coding을 해줘서 param01_data로 보낸 것을 다시 한글 "관리자"로 디코딩해서 출력하는 과정 --%>
	<p> 이 름 : <%=java.net.URLDecoder.decode(name)%>
</body>
</html>