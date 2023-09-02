<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="utf-8">
<title>Book Market</title>
</head>
<body>
<%@ include file="menu.jsp" %>

<%!
String main = "도서 웹 쇼핑몰";
String main_tagline = "Welcome to Book Market";
%>

<div class="jumbotron">
	<div class="container">
		<h1 class = "display-3"><%=main %></h1>
	</div>
</div>

<main role="main">
<div class="container">
	<div class="text-center">
		<h3><%=main_tagline %></h3>
        <hr>
	</div>
</div>
<%@ include file="footer.jsp" %>
</main>

</body>
</html>