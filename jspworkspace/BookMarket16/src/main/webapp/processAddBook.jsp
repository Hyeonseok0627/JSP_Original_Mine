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

PreparedStatement pst = null; 

String sql = "insert into book values(?,?,?,?,?,?,?,?,?,?,?,?)";
pst = conn.prepareStatement(sql);
pst.setString(1, bookId);
pst.setString(2, name);
pst.setInt(3, price);
pst.setString(4, author);
pst.setString(5, description);
pst.setString(6, publisher);
pst.setString(7, category);
pst.setLong(8, stock);
pst.setLong(9, total_Pages);
pst.setString(10, releaseDate);
pst.setString(11, condition);
pst.setString(12, fileName);
pst.executeUpdate();

if (pst != null)
	pst.close();
if (conn != null)
	conn.close();

response.sendRedirect("books.jsp");

%>