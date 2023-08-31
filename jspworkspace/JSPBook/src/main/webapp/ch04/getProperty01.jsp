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
	<%--밑에 있는 getId(), setName() 메서드 사용한 java로 표현문 작성한 내용을 간단히 액션 태그로만 구현한 것 --%>
	<%--getProperty 자체가 값을 가져오는 것이라 출력이 됨, 그래서 밑에 출력을 한번 더 한 것이라 두 개가 나옴 --%>
	<p> 아이디 : <jsp:getProperty name="person" property="id"  /></p>
	<p> 이 름 : <jsp:getProperty name="person" property="name"  /></p>
	
	<p> 아이디 : <% out.println(person.getId()); %></p>
	<p> 이 름 : <% out.println(person.getName()); %></p>
</body>
</html>