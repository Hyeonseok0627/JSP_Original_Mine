<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Book" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session"/>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<% 	String id = request.getParameter("id");
		Book book = bookDAO.getBookById(id);
	%>
	
	<div class="container">
	<div class="row">
		<div class="col-md-12">
			<h3><%=book.getPname()%></h3>
			<p><%=book.getDescription() %>
			<p><b>도서 코드 : </b><span class="badge badge-danger"></span>
				<%=book.getBookId() %>
			<p><b>출판사</b> : <%=book.getPublisher() %>
			<p><b>저자 </b> : <%=book.getAuthor() %>			
			<p><b>재고 수</b> : <%=book.getUnitsInStock() %>
			<p><b>총 페이지 수</b> : <%=book.getTotalPages() %>
			<p><b>출판일</b> : <%=book.getReleaseDate() %>
			<h4><%=book.getUnitPrice() %></h4>
			<p><a href="#" class="btn btn-info">도서주문</a>
			<a href="./books.jsp" class="btn btn-secondary">도서 목록</a>
		</div>
	</div>
	</div>
	<%@ include file="footer.jsp" %>

</body>
</html>