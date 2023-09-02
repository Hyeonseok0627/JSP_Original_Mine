<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>

<%
request.setCharacterEncoding("UTF-8");

String filename = "";
String realFolder = "C:\\upload"; //웹 어플리케이션상의 절대 경로
String encType = "UTF-8"; //인코딩 타입
int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

String bookId = multi.getParameter("bookId");
String name = multi.getParameter("name");
String unitPrice = multi.getParameter("unitPrice");
String author = multi.getParameter("author");
String description = multi.getParameter("description");
String publisher = multi.getParameter("publisher");
String category = multi.getParameter("category");
String unitsInStock = multi.getParameter("unitsInStock");
String totalPages = multi.getParameter("totalPages");
String releaseDate = multi.getParameter("releaseDate");
String condition = multi.getParameter("condition");

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

Enumeration files = multi.getFileNames();
String fname = (String) files.nextElement();
String fileName = multi.getFilesystemName(fname);

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
newBook.setFilename(fileName);

dao.addBook(newBook);

response.sendRedirect("books.jsp");

%>