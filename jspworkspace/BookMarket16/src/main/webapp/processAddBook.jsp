<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>

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

String sql = "insert into book values(?,?,?,?,?,?,?,?,?,?,?,?)";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, bookId);
pstmt.setString(2, name);
pstmt.setInt(3, price);
pstmt.setString(4, author);
pstmt.setString(5, description);
pstmt.setString(6, publisher);
pstmt.setString(7, category);
pstmt.setLong(8, stock);
pstmt.setLong(9, total_Pages);
pstmt.setString(10, releaseDate);
pstmt.setString(11, condition);
pstmt.setString(12, fileName);
pstmt.executeUpdate();

if (pstmt != null)
	pstmt.close();
if (conn != null)
	conn.close();

response.sendRedirect("books.jsp");

%>