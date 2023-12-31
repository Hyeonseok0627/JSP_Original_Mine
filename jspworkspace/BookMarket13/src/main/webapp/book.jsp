<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository"%>

<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href ="./resources/css/bootstrap.min.css" />
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

	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 정보</h1>
		</div>
	</div>
	<% 	
		String id = request.getParameter("id");
		BookRepository dao = BookRepository.getInstance();
		Book book = dao.getBookById(id);
	%>

	<div class="container">
	<div class="row" align="left">
		<div class="col-md-4">
			<img src="/upload/<%=book.getFilename()%>" style="width: 100%" />
		</div>
		<div class="col-md-8 align-self-center">
			<h3><%=book.getPname()%></h3>
			<p><%=book.getDescription() %>
			<p><b>도서 코드 : </b><span class="badge badge-danger">
				<%=book.getBookId() %></span>
			<p><b>출판사</b> : <%=book.getPublisher() %>
			<p><b>저자 </b> : <%=book.getAuthor() %>			
			<p><b>재고 수</b> : <%=book.getUnitsInStock() %>
			<p><b>총 페이지 수</b> : <%=book.getTotalPages() %>
			<p><b>출판일</b> : <%=book.getReleaseDate() %>
			<h4><%=book.getUnitPrice() %>원</h4>
			<p><form name="addForm" action="./addCart.jsp?id=<%=book.getBookId()%>" method="post">
				<a href="#" class="btn btn-info" onclick="addToCart()"> 도서 주문 &raquo;</a> 
				<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
				<a href="./products.jsp" class="btn btn-secondary"> 도서 목록 &raquo;</a>
			</form></p>
		</div>
	</div>
	<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>