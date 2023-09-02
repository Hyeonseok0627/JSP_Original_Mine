<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository"%>

<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href ="./resources/css/bootstrap.min.css" />
<title>도서 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<%
		BookRepository dao = BookRepository.getInstance();
		ArrayList<Book> listOfBooks = dao.getAllBooks();
	%>
	
	<div class="container">
			<%
				for(int i=0; i<listOfBooks.size(); i++){
					Book book = listOfBooks.get(i);
			%>
		<div class="row" align="left">
			<div class="col-md-2">
				<img src ="/upload/<%=book.getFilename()%>" style ="width: 100%">
			</div>
			<div class="col-md-8" >
				<h3>[<%=book.getCategory() %>] <%=book.getPname() %></h3>
				<p><%=book.getDescription() %>
				<p><%=book.getAuthor()%> | <%=book.getPublisher() %> | <%=book.getUnitPrice() %>원
			</div>
			<div class="col-md-2 align-self-center">
				<p><a href="./book.jsp?id=<%=book.getBookId() %>"
				class="btn btn-secondary" role="button">상세 정보 &raquo;</a>
			</div>
		</div>
		<hr>
			<%
				}
			%>
		</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>