<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/CSS/bootstrap.min.css" />
<meta charset="UTF-8">
<title>주문 완료</title>
</head>
<body>
	<%
		String shipping_cartId = "";
		String shipping_name = "";
		String shipping_shippingDate = "";
		String shipping_country = "";
		String shipping_zipCode = "";
		String shipping_addressName = "";
	
		Cookie[] cookies = request.getCookies();
	
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if (n.equals("Shipping_cartId"))
					shipping_cartId = URLDecoder.decode((thisCookie.getValue()),
					"utf-8");
				System.out.println(shipping_cartId);
				if (n.equals("Shipping_shippingDate"))
					shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()),
					"utf-8");
				System.out.println(shipping_shippingDate);
			}
		}			
	%>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">주문 완료</h1>
		</div>
	</div>
	<div class="container">
		<h2 class="alert alert-danger">주문해주셔서 감사합니다.</h2>
		<p> 주문은 <%out.println(shipping_shippingDate); %>에 배송될 예정입니다!
		<p> 주문번호 : <%out.println(shipping_cartId); %>
	</div>
	<div class="container">
		<p> <a href="./products.jsp" class="btn btn-secondary"> &laquo; 상품 목록</a>
	</div>
</body>
</html>
<%
	session.invalidate();
	
	for (int i = 0; i < cookies.length; i++) {
		Cookie thisCookie = cookies[i];
		String n = thisCookie.getName();
		if (n.equals("Shipping_cartId")) {
			thisCookie.setMaxAge(0); //쿠키안에는 많은 데이터가 들어있으므로, 해당 데이터만 초기화해서 삭제해야해서 "Shipping_cartId" 이런 지정 데이터만 if문 반복하게되서 초기화시키도록 함
		} else if (n.equals("Shipping_name")) {
			thisCookie.setMaxAge(0);
		} else if (n.equals("Shipping_shippingDate")) {
			thisCookie.setMaxAge(0);
		} else if (n.equals("Shipping_country")) {
			thisCookie.setMaxAge(0);
		} else if (n.equals("Shipping_zipCode")) {
			thisCookie.setMaxAge(0);
		} else if (n.equals("Shipping_addressName")) {
			thisCookie.setMaxAge(0);
		}
		response.addCookie(thisCookie);
	}
%>