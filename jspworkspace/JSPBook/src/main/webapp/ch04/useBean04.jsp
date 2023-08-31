<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" />
	<p> 아이디 : <%=person.getId() %></p>
	<p> 이 름 : <%=person.getName() %></p>
		<%
			person.setId(20182005);
			person.setName("홍길동");
		%>
		<%--표현문 태그에서 id와 name을 다시 해당 변수값으로 지정하는 메서드 작성 후에
		include 액션 태그로써 useBean03 내용을 다시 가지고 올때, 실행문의 getId(), getName() 메서드 내용은 set을 한 것이 반영된 값이 나옴 --%>
		<jsp:include page="useBean03.jsp" />
</body>
</html>