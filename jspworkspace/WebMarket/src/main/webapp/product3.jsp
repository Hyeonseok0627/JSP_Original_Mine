<%--해당 페이지가 원래 내가 작성한 페이지 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>
<%@page import="java.util.ArrayList"%>

<%--209 페이지 내용 추가 --%>
<%-- <%@ page import="dao.ProductRepository" %>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" /> : 551~569 페이지로 내용 삭제--%>

<!DOCTYPE html>
<html>
<head>

<%--551~569 페이지 내용 추가 --%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<%--cdn: 부트스트랩 같이 이미 만들어져있는 html,css,js 등을 불러오는 인터넷 링크  --%>
<%--241 페이지 내용으로 변경 --%>
<%-- <link rel="stylesheet" href="./resources/CSS/bootstrap.min.css" /> : 551~569 페이지로 내용 삭제--%>

<meta charset="UTF-8">
<title>상품 상세 정보</title>

<%--439 페이지 내용 추가 --%>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}
</script>

</head>
<body>
	<%--551~569 페이지 내용으로 변경 --%>
	<%@ include file = "menu.jsp" %>
	<%-- <jsp:include page="menu.jsp" /> : 551~569 페이지로 내용 삭제--%>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	
	<%--551~569 페이지 내용으로 추가 --%>
	<%@ include file="dbconn.jsp" %>
	<% 
		String productId = request.getParameter("id");	
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM product WHERE p_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,productId);
		rs = pstmt.executeQuery();
		if(rs.next()){
	%>
	<%--<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		
		Product product = dao.getProductById(id); //209 페이지 내용 추가
		/*Product product = productDAO.getProductById(id); 202 ~9 페이지 내용하면서 해당 usebean 내용은 삭제 */ 
		
	%> : 551~569 페이지로 내용 삭제--%>
	
	<div class="container">
		<div class="row">
		<div class="col-md-5">
		
			<%--551~569 페이지 내용으로 추가 --%>
			<img src="/upload/<%=rs.getString("p_fileName")%>" style="width:100%;">
			<%--242 페이지 내용 추가 -> 243 페이지 내용으로 변경 --%>
			<%-- <img src="/upload/<%=product.getFilename()%>" style="width: 100%"> : 551~569 페이지로 내용 삭제--%>
		
		</div>
		
		<%--551~569 페이지 내용 추가 --%>	
		<div class="col-md-6">
				<h3><%=rs.getString("p_name")%></h3>
				<p><%=rs.getString("p_description")%></p>
				
				<p>
					<b>상품 코드 : </b>
					<span class="badge badge-danger">
						<%=rs.getString("p_id")%>
					</span>
				</p>
				<p><b>제조사</b> : <%=rs.getString("p_manufacturer")%></p>
				<p><b>분류</b> : <%=rs.getString("p_category")%></p>
				<p><b>재고 수</b> : <%=rs.getString("p_unitsInStock")%></p>
				<h4><%=rs.getString("p_unitPrice")%>원</h4>
				<p>
					<form action="./addCart.jsp?id=<%=rs.getString("p_id")%>" 
						method="post" name="addForm">
						<a href="#" class="btn btn-info" onclick="addToCart()">상품 주문 &raquo;</a>
						<a href="./cart.jsp" class="btn btn-warning">장바구니 &raquo;</a>
						<a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
			
			<%-- <div class="col-md-6">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %>
				<p> 
					<b>상품 코드 : </b>
					<span class="badge badge-danger">
					<%=product.getProductId() %>
					</span>
				</p>
				<p><b>제조사</b> : <%=product.getManufacturer()%></p>
				<p><b>분류</b> : <%=product.getCategory()%></p>
				<p><b>재고 수</b> : <%=product.getUnitsInStock()%></p>
				<h4><%=product.getUnitPrice()%>원</h4> : 551~569 페이지로 내용 삭제--%>
				
				<%--439 페이지 내용 추가 --%>
				<%-- <p> <form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>" method="post"> </p> : 551~569 페이지로 내용 삭제--%>
				
				<%--439 페이지 내용 추가 --%>
				<%--<p> <a href="#" class="btn btn-info" onclick="addToCart()"> 상품 주문 &raquo;</a></p>: 551~569 페이지로 내용 삭제--%>
				<%-- <p> <a href="#" class="btn btn-info"> 상품 주문 &raquo;</a> : 추가되기 이전 내용--%>
				
				<%--439 페이지 내용으로 변경 --%>
				<%--<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>: 551~569 페이지로 내용 삭제--%>
				<%-- <a href=" ./products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a> : 변경되기 이전 내용--%>
				
					</form></p>
				
			</div>
		</div>
		<hr>
	</div>
	
	<%--551~569 페이지 내용 추가 --%>
	<%} %>
	<%@ include file = "footer.jsp" %>
	<%-- <jsp:include page="footer.jsp" /> : 551~569 페이지로 내용 삭제--%>
	
</body>
</html>