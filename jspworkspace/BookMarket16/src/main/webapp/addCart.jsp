<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<%@ include file="dbconn.jsp" %>
<%
	String id = request.getParameter("id");
	if(id == null || id.trim().equals("")){
		response.sendRedirect("books.jsp");
		return;
	}

	PreparedStatement pst = null;
	ResultSet rt = null;
	
	String sql = "SELECT * FROM book WHERE b_id = ?";
	pst = conn.prepareStatement(sql);
	pst.setString(1,id);
	rt = pst.executeQuery();
	
	if(!rt.next()){
		response.sendRedirect("excpetionNoBookId.jsp");
	}
	
	sql = "SELECT * FROM book";
	pst = conn.prepareStatement(sql);
	rt = pst.executeQuery();
	
	ArrayList<Book> goodsList = new ArrayList<Book>();
	
	while(rt.next()){
		Book book = new Book();
/* 		Book.setBookId(rt.getString("b_id"));
		Book.setPname(rt.getString("b_name"));
		Book.setUnitPrice(rt.getInt("b_unitPrice"));
		Book.setAuthor(rt.getString("b_author"));
		Book.setDescription(rt.getString("b_description"));
		Book.setPublisher(rt.getString("b_publisher"));
		Book.setCategory(rt.getString("b_category"));
		Book.setUnitsInStock(rt.getLong("b_unitsInStock"));
		Book.setTotalPages(rt.getLong("b_totalPages"));
		Book.setReleaseDate(rt.getString("b_releaseDate"));
		Book.setCondition(rt.getString("b_condition"));
		Book.setFilename(rt.getString("b_fileName")); */
		goodsList.add(book);
	}
	
	Book goods = new Book();
	for(int i=0; i<goodsList.size(); i++){
		goods = goodsList.get(i);
		if(goods.getBookId().equals(id)){
			break;
		}
	}
	
	ArrayList<Book> list = (ArrayList<Book>) session.getAttribute("cartlist");
	if(list == null){
		list = new ArrayList<Book>();
		session.setAttribute("cartlist", list);
	}
	
	int cnt = 0;
	Book goodsQnt = new Book();
	for(int i=0; i<list.size(); i++){
		goodsQnt = list.get(i);
		if(goodsQnt.getBookId().equals(id)){
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}
	if(cnt==0){
		goods.setQuantity(1);
		list.add(goods);
	}
	
	response.sendRedirect("book.jsp?id=" + id);
%>