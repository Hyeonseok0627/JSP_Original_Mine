<%--밑에 있는 건 디렉티브 태그 종류
태그 안에 내용 작성법은 html 작성법인 속성종류="이름" 이런 방식으로 작성하고 한 칸 띄우고 다음 내용 추가작성 --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Welcome</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<%--<!-- -->해당 주석문은 웹 브라우저 F12키 소스 코드에서는 나타남--%>
<%-- 그렇기 때문에 jsp에서는 jsp 주석문을 사용해줘야함--%>
<!-- 	<nav class = "navbar navbar-expand navbar-dark bg-dark">
		<div class = "container">
			<div class = "navbar-header">
				<a class = "navbar-brand" href="./welcome.jsp">Home</a>
			</div>
		</div>
	</nav> -->
<%@ include file = "menu.jsp" %>
<%!
	String greeting = "도서 웹 쇼핑몰";
	String tagline = "Welcome to Web Market!";
%>

	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">
				<%= greeting %>
			</h1>
		</div>
	</div>
	
	<div class = "container">
		<div class = "text-center">
			<h3>
				<%= tagline %>
			</h3>
			<%
				response.setIntHeader("Refresh" , 1); //176페이지 내용 추가한 부분
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT =  hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("현재 접속 시각: " + CT + "\n");
			%>
			<hr>
		</div>
	</div>
	
<!-- 	<footer class = "container">

	</footer> -->
<%@ include file = "footer.jsp" %>
</body>
</html>