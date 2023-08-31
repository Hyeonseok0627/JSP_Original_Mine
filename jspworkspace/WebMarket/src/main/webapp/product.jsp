<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>

<%--209 페이지 내용 추가 --%>
<%@ page import="dao.ProductRepository" %>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>

<%--cdn: 부트스트랩 같이 이미 만들어져있는 html,css,js 등을 불러오는 인터넷 링크  --%>
<%--241 페이지 내용으로 변경 --%>
<link rel="stylesheet" href="./resources/CSS/bootstrap.min.css" />

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
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		
		Product product = dao.getProductById(id); //209 페이지 내용 추가
		/*Product product = productDAO.getProductById(id); 202 ~9 페이지 내용하면서 해당 usebean 내용은 삭제 */ 
		
	%>
	<div class="container">
		<div class="row">
		<div class="col-md-5">
		
			<%--242 페이지 내용 추가 -> 243 페이지 내용으로 변경 --%>
			<img src="/upload/<%=product.getFilename()%>" style="width: 100%">
		
		</div>	
			<div class="col-md-6">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %>
				<p> <b>상품 코드 : </b><span class="badge badge-danger">
					<%=product.getProductId() %></span>
				<p> <b>제조사</b> : <%=product.getManufacturer() %>
				<p> <b>분류</b> : <%=product.getCategory() %>
				<p> <b>재고 수</b> : <%=product.getUnitsInStock() %>
				<h4><%=product.getUnitPrice() %>원</h4>
				
				<%--439 페이지 내용 추가 --%>
				<p> <form name="addForm" action="./addCart.jsp?id=<%=product.getProductId()%>" method="post"> </p>
				
				<%--439 페이지 내용 추가 --%>
				<p> <a href="#" class="btn btn-info" onclick="addToCart()"> 상품 주문 &raquo;</a></p>
				<%-- <p> <a href="#" class="btn btn-info"> 상품 주문 &raquo;</a> : 추가되기 이전 내용--%>
				
				<%--439 페이지 내용으로 변경 --%>
				<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
				<%-- <a href=" ./products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a> : 변경되기 이전 내용--%>
				
				</form>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>