<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <%--include02 페이지와 같은 UTF-8로 설정해야 정상적 작동, 다르면 에러가 뜸 --%>
    <%--header, footer 같은 것은 이렇게 필요한 내용만 기입하면 됨, <html>,<title> 등의 태그는 필요없음 --%>
<%!
	int pageCount = 0;
	void addCount() {
		pageCount++;
	}
%>
<%
	addCount();
%>
<%--표현문만 구현이 됨, 다른 부분은 out.print 하지않는 이상 브라우저에서 안 나타남 --%>
<p>이 사이트 방문은 <%=pageCount%>번째 입니다.</p>
