<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Book" %>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>도서 상세 정보</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("도서를 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>
</head>
<body>

<%-- 	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 정보</h1>
		</div>
	</div>

	<%@ include file="dbconn.jsp" %>
	<% 
		String bookId = request.getParameter("id");	
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM book WHERE b_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,bookId);
		rs = pstmt.executeQuery();
		if(rs.next()){
	%>


	<div class="container">
	<div class="row" align="left">
		<div class="col-md-4">
			<img src="/upload/<%=rs.getString("b_fileName")%>" style="width: 100%" />
		</div>
		<div class="col-md-8 align-self-center">
			<h3><%=rs.getString("b_name")%></h3>
			<p><%=rs.getString("b_description") %>
			<p><b>도서 코드 : </b><span class="badge badge-danger">
				<%=rs.getString("b_id") %></span>
			<p><b>출판사</b> : <%=rs.getString("b_publisher") %>
			<p><b>저자 </b> : <%=rs.getString("b_author") %>			
			<p><b>재고 수</b> : <%=rs.getString("b_unitsInStock") %>
			<p><b>총 페이지 수</b> : <%=rs.getString("b_totalPages") %>
			<p><b>출판일</b> : <%=rs.getString("b_releaseDate") %>
			<h4><%=rs.getString("b_unitPrice") %>원</h4>
			<p><form action="./addCart.jsp?id=<%=rs.getString("b_id")%>"
					method="post" name="addForm">
				<a href="#" class="btn btn-info" onclick="addToCart()"> 도서 주문 &raquo;</a> 
				<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
				<a href="./books.jsp" class="btn btn-secondary"> 도서 목록 &raquo;</a>
			</form></p>
		</div>
	</div>
	<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html> --%>