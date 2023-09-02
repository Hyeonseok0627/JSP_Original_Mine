<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto.Book" %>
<%@page import="dao.BookRepository" %>

<%
request.setCharacterEncoding("UTF-8");

String bookId = request.getParameter("bookId");
String name = request.getParameter("name");
String unitPrice = request.getParameter("unitPrice");
String author = request.getParameter("author");
String description = request.getParameter("description");
String publisher = request.getParameter("publisher");
String category = request.getParameter("category");
String unitsInStock = request.getParameter("unitsInStock");
String totalPages = request.getParameter("totalPages");
String releaseDate = request.getParameter("releaseDate");
String condition = request.getParameter("condition");

Integer price;
if(unitPrice == null)
	price = 0;
else
	price = Integer.valueOf(unitPrice);

long stock;
if(unitsInStock == null)
	stock = 0;
else
	stock = Long.valueOf(unitsInStock);

long total_Pages;
if(totalPages == null)
	total_Pages = 0;
else
	total_Pages = Long.valueOf(totalPages);

BookRepository dao = BookRepository.getInstance();

Book newBook = new Book();
newBook.setBookId(bookId);
newBook.setPname(name);
newBook.setUnitPrice(price);
newBook.setAuthor(author);
newBook.setDescription(description);
newBook.setPublisher(publisher);
newBook.setCategory(category);
newBook.setUnitsInStock(stock);
newBook.setTotalPages(total_Pages);
newBook.setReleaseDate(releaseDate);
newBook.setCondition(condition);

dao.addBook(newBook);

response.sendRedirect("books.jsp");

%>