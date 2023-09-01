<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p><jsp:useBean id="now" class="java.util.Date" /></p>
	<p><fmt:formatDate value="${now}" type="date"/></p>
	<p><fmt:formatDate value="${now}" type="time"/></p>
	<p><fmt:formatDate value="${now}" type="both"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="default"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="short"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="medium"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="long"/></p>
	<p><fmt:formatDate value="${now}" type="both" dateStyle="full"/></p>
	<p><fmt:formatDate value="${now}" type="both" pattern="yyyy년MM월dd일 HH시mm분ss초 E요일"/></p>
</body>
</html>







