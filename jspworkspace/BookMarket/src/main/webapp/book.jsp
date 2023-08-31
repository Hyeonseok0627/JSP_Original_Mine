<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Book" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<%--cdn: 부트스트랩 같이 이미 만들어져있는 html,css,js 등을 불러오는 인터넷 링크  --%>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품 상세 정보</title>
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
		Book book = bookDAO.getBookById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3>[<%=book.getBookId()%>] <%=book.getName()%></h3>
				<p><%=book.getDescription() %>
				<p> <b>도서 코드 : </b><span class="badge badge-danger">
					<%=book.getBookId() %></span>
				<p> <b>출판사</b> : <%=book.getPublisher() %>
				<p> <b>저자</b> : <%=book.getAuthor() %>
				<p> <b>재고 수</b> : <%=book.getUnitsInStock() %>
				<p> <b>총 페이지 수</b> : <%=book.getTotalPages() %>
				<p> <b>출판일</b> : <%=book.getReleaseDate() %>
				<h4><%=book.getUnitPrice() %>원</h4>
				<p> <a href="#" class="btn btn-info"> 도서 주문 &raquo;</a>
				<a href=" ./products.jsp" class="btn btn-secondary"> 도서 목록 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>