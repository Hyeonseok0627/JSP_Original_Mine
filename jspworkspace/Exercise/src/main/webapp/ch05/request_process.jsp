<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8"); //utf-8을 안하면 한글 입력할 시 결과값에서 깨져서 나오는 에러가 뜸
		String str = URLDecoder.decode(request.getQueryString()); //아이디에 한글을 쓰는 경우를 고려해서 이렇게 작성 / 영어만 쓰는 경우엔 request.getQueryString() 이것만 써줘도 됨
	%>
	전송된 요청 파라미터 : <%=str%> 
	
</body>
</html>