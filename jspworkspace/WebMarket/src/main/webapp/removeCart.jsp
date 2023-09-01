<%@page import="java.util.ArrayList"%>
<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("products.jsp");
		return;
	}

	/* ProductRepository dao = ProductRepository.getInstance();

	Product product = dao.getProductById(id);
	if (product == null) {
		response.sendRedirect("exceptionNoProductId.jsp");
	}  : 해당 부분은 세션에 있는 데이터를 데이터베이스의 데이터와 일치하는지를 따지는 것이라 있어도 되고, 없어도 되는데
	해당 부분은 MySQL로 하기전것이라 MySQL연동 시에는 해당 코드는 삭제해야 삭제기능이 작동됨(에러가 안뜸)*/
	
	ArrayList<Product> cartList = (ArrayList<Product>) session.
	getAttribute("cartlist");
	Product goodsQnt = new Product();
	for (int i=0; i < cartList.size(); i++) {
		goodsQnt = cartList.get(i);
		if (goodsQnt.getProductId().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}
	
	response.sendRedirect("cart.jsp");
%>