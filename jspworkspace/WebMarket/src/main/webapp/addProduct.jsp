<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--319 페이지 내용 추가 --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>

<%--244 페이지 내용으로 변경 --%>
<link rel="stylesheet" href="./resources/CSS/bootstrap.min.css" />

<%--282 페이지 내용 추가 --%>
<script type="text/javascript" src="./resources/js/validation.js"></script>

<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>

	<%--319 페이지 내용 추가 --%>
	<fmt:setLocale value='<%=request.getParameter("language") %>'/>
	<%--</fmt:bundle>를 안해주면 에러가 뜸 --%>
	<fmt:bundle basename="bundle.message">
	
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
		
			<%--320 페이지 내용 추가 --%>
			<h1 class="display-3"><fmt:message key="title" /></h1>
			<%--<h1 class="display-3">상품 등록</h1> : 추가하기 이전 내용--%>
			
		</div>
	</div>
	<%--input 태그 안에 name이랑 processAddProduct.jsp에서의 getParameter에서의 값과 무조건 같아야함, 그래야 불러올 수 있으니 동일한지 체크 필수 --%>
	<div class="container">
		
		<%--320 페이지 내용 추가 --%>
		<div class="text-right">
			<a href="?language=ko" >Korean</a>|<a href="?language=en" >English</a>
			
			<%--352 페이지 내용 추가 --%>
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		
		</div>
		
		<%--244 페이지 내용으로 변경 --%>
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-gruop row">
			
				<%--320 페이지 내용 추가 --%>
				<label class="col-sm-2"><fmt:message key="productId" />
				</label>
				<%-- <label class="col-sm-2">상품 코드</label> : 추가하기 이전 내용--%>
				
				<div class="col-sm-3">
				
					<%--id="productId" 추가(282 페이지 내용 --%>
					<input type="text" id="productId" name="productId" class="form-control">
					
				</div>
			</div>
			<div class="form-group row">
			
				<%--320 페이지 내용 추가 --%>
				<label class="col-sm-2"><fmt:message key="pname" />
				</label>
				<%-- <label class="col-sm-2">상품명</label> : 추가하기 이전 내용--%>
				<div class="col-sm-3">
					
					<%--id="name" 추가(282 페이지 내용 --%>
					<input type="text" id="name" name="name" class="form-control">
					
				</div>
			</div>
			<div class="form-group row">
			
				<%--320 페이지 내용 추가 --%>
				<label class="col-sm-2"><fmt:message key="unitPrice" />
				</label>
				<%-- <label class="col-sm-2">가격</label> : 추가하기 이전 내용--%>
				
				<div class="col-sm-3">
				
					<%--id="unitPrice" 추가(282 페이지 내용 --%>
					<input type="text" id="unitPrice" name="unitPrice" class="form-control">
					
				</div>
			</div>
			<div class="form-group row">
			
				<%--320 페이지 내용 추가 --%>
				<label class="col-sm-2"><fmt:message key="description" />
				</label>
				<%--<label class="col-sm-2">상세 정보</label> : 추가하기 이전 내용--%>
				
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
			
				<%--321 페이지 내용 추가 --%>
				<label class="col-sm-2"><fmt:message key="manufacturer" />
				</label>
				<%-- <label class="col-sm-2">제조사</label> : 추가하기 이전 내용--%>
				
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
			<div class="form-group row">
			
				<%--321 페이지 내용 추가 --%>
				<label class="col-sm-2"><fmt:message key="category" />
				</label>
				<%-- <label class="col-sm-2">분류</label> : 추가하기 이전 내용--%>
				
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			<div class="form-group row">
			
				<%--321 페이지 내용 추가 --%>
				<label class="col-sm-2"><fmt:message key="unitsInStock" />
				</label>
				<%-- <label class="col-sm-2">재고 수</label> : 추가하기 이전 내용--%>
				
				<div class="col-sm-3">
				
					<%--id="unitsInStock" 추가(282 페이지 내용 --%>
					<input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
					
				</div>
			</div>
			<div class="form-group row">
				
				<%--321 페이지 내용 추가 --%>
				<label class="col-sm-2"><fmt:message key="condition" />
				</label>
				<%-- <label class="col-sm-2">상태</label> : 추가하기 이전 내용--%>
				
				<div class="col-sm-5">
					
					<input type="radio" name="condition" value="New">
					
					<%--321 페이지 내용 추가 --%>
					<fmt:message key="condition_New" />
					<%-- 신규 제품 : 추가하기 이전 내용--%>
					
					<input type="radio" name="condition" value="Old">
					
					<%--321 페이지 내용 추가 --%>
					<fmt:message key="condition_Old" />
					<%-- 중고 제품 : 추가하기 이전 내용--%>
					
					<input type="radio" name="condition" value="Refurbished">
					
					<%--321 페이지 내용 추가 --%>
					<fmt:message key="condition_Refurbished" />
					<%-- 재생 제품 : 추가하기 이전 내용--%>
					
				</div>
			</div>
			
			<%--244 페이지 내용 추가 --%>
			<div class="form-group row">
			
				<%--322 페이지 내용 추가 --%>
				<label class="col-sm-2"><fmt:message key="productImage" />
				</label>
				<%-- <label class="col-sm-2">이미지</label> : 추가하기 이전 내용--%>
				
				<div class="col-sm-5">
					<input type="file" name="productImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					
					<%--322 페이지 내용 추가 --%>
					<input type="button" class="btn btn-primary" value="<fmt:message key="button" />" onclick="CheckAddProduct()">
					
					<%--283 페이지 내용 추가 --%>
					<%-- <input type="button" class="btn btn-primary" value="등록" onclick="CheckAddProduct()"> : 322 페이지 내용 추가하기 이전 내용--%>
					<%--<input type="submit" class="btn btn-primary" value="등록"> : 변경 전 내용--%>
					
				</div>
			</div>
		</form>
	</div>
</fmt:bundle>
</body>
</html>