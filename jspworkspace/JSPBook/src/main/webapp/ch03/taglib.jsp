<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--서버 실행 중에 라이브러리 추가 등의 새롭게 추가하게 되면 인식을 못 하는 거라 서버를 껐다가 리스타트를 해줘야 바뀐 것을 인식하게 됨 --%>
    <%--taglib에 태그 주소가 여러개이며, 쓰고자 하는 태그를 uri에서 선택하여 넣어서 써줌(http이지만 인터넷에서 가져오는 게 아니고, lib폴더에 넣은 jstl 파일에서 가져오는 태그 주소임
    그래서 jstl파일이 없으면 못 불러옴 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--jstl태그는 자바에서 보통 쓰는 반복문, 조건문 등의 내용들을 편하게 가지고와서 쓰려고 나온 것
문법은 html태그와 유사하게 자바에서 쓰는 내용을 표현함 --%>
	<c:forEach var="k" begin="1" end ="10" step="1">
		<c:out value="${k}" />
	</c:forEach>
</body>
</html>