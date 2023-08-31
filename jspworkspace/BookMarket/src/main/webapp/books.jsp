<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Book" %>
<jsp:useBean id="bookDAO" class="dao.BookRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
	 	ArrayList<Book>listOfBooks = bookDAO.getAllBooks(); 
	%>
	 <div class="container">
		<%--밑에 있는 내용을 for문으로 반복해줌 --%>
	 <%
	 			for(int i=0; i<listOfBooks.size(); i++) {
	 				Book book = listOfBooks.get(i);
	 		%>
	 		<%--행 단위로 구획을 나눔 --%>
	 	<div class="row" align="left">
	 		
	 		<%--row 클래스 안에서 열로 구간을 나눔(전체 12칸 중 10칸인 비율을 차지함) --%>
	 		<div class="col-md-10">
	 			<p><h3>[<%=book.getBookId()%>] <%=book.getName()%></h3></p>
	 			<p><%=book.getDescription()%>
	 			<p><%=book.getAuthor()%> | <%=book.getPublisher()%> | <%=book.getUnitPrice()%>원 </p>
	 		</div>
	 		
	 		<%--row 클래스 안에서 열로 구간을 나눔(전체 12칸 중 2칸인 비율을 차지함) --%>
	 		<%--align-self-center : 중앙정렬 --%>
	 		<div class="col-md-2 align-self-center">
		 		<a href= " ./book.jsp?id=<%=book.getBookId()%>"
		 			class= "btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
	 		</div>
	 		
	 	</div>
	 	<hr>
	 	<%
	 			} 		
	 		%>
	</div>
	<jsp:include page="footer.jsp"	/> 		
</body>
</html>