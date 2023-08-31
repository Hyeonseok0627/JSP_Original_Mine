<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
<%--자바빈즈 클래스에서 변수를 private한 것이므로 useBean 액션 태그에서 사용하려면 getProperty, setProperty 또는 get(), set() 메서드를 사용해서 불러와야함 --%>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" />
	<%--name:useBean의 id, property:불러오는 해당 클래스의 변수명, value:변수에 넣고 싶은 값 --%>
	<jsp:setProperty name="person" property="id" value="20182005" />
	<jsp:setProperty name="person" property="name" value="홍길동"  />
	<p> 아이디 : <% out.println(person.getId()); %></p>
	<p> 이 름 : <% out.println(person.getName()); %></p>

</body>
</html>