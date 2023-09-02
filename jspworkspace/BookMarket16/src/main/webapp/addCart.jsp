<%@ page contentType="text/html; charset=UTF-8"%>
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

	pstmt = null;
	rs = null;
	
	String sql = "SELECT * FROM book WHERE b_id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	rs = pstmt.executeQuery();
	
	if(!rs.next()){
		response.sendRedirect("excpetionNoBookId.jsp");
	}
	
	sql = "SELECT * FROM book";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	ArrayList<Book> goodsList = new ArrayList<Book>();
	
	while(rs.next()){
		Book book = new Book();
/* 		Book.setBookId(rs.getString("b_id"));
		Book.setPname(rs.getString("b_name"));
		Book.setUnitPrice(rs.getInt("b_unitPrice"));
		Book.setAuthor(rs.getString("b_author"));
		Book.setDescription(rs.getString("b_description"));
		Book.setPublisher(rs.getString("b_publisher"));
		Book.setCategory(rs.getString("b_category"));
		Book.setUnitsInStock(rs.getLong("b_unitsInStock"));
		Book.setTotalPages(rs.getLong("b_totalPages"));
		Book.setReleaseDate(rs.getString("b_releaseDate"));
		Book.setCondition(rs.getString("b_condition"));
		Book.setFilename(rs.getString("b_fileName")); */
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