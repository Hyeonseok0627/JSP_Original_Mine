<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internationalization</title>
</head>
<body>
	<p> ----------기본 로케일--------------
	<%--밑에 ko를 설정한 이유 : 웹브라우저 설정에 언어가 영어로 설정이 되어있어서, 둘 다 영어로 나오게 되는 것이라 ko로 따로 한글이 표시되도록 설정해줘야함 --%>
	<fmt:setLocale value="ko"/>
		<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle" />
	<p> 제목 : <fmt:message key="title" bundle="${resourceBundle}" />
	<p> <fmt:message key="username" var="userMsg" bundle="${resourceBundle}" />
		이름 : ${userMsg}
		
	<%--영문으로 출력이 안되고 한글로 출력되는 에러 해결해보기 -> 밑에 방식으로 해결완료
	 myBundle_en.properties : "t"가 빠져서 해당 파일이 없어서 기본값인 myBundle.properties 이것을 불러오는 것이라 한글만 두번 입력이 나옴--%>
	<p> ----------영문 로케일--------------
			<fmt:setLocale value="en"/>
			<fmt:setBundle basename="ch09.com.bundle.myBundle" var="resourceBundle" />
	<p> 제목 : <fmt:message key="title" bundle="${resourceBundle}" />
	<p> 이름 : <fmt:message key="username" bundle="${resourceBundle}" />
</body>
</html>