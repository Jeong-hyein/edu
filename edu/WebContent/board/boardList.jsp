<%@page import="java.util.ArrayList"%>
<%@page import="co.yedam.app.board.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<%@include file="/common/menu.jsp" %>
  <%
  /* String loginId = (String) session.getAttribute("loginId");  menu에서 loginId에서 정의해서 다시 정의필요x*/
  if(loginId != null) { %>
  <a href="/edu/board/boardInsert.jsp">게시판 작성</a>
  <%} %>
	<h3>게시판 목록</h3>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>등록시간</td>
			<td>아이디</td>
			<td>이름</td>
		</tr>
		<% ArrayList<BoardVO> list = (ArrayList<BoardVO>) request.getAttribute("list");
		for (BoardVO vo : list) { %>
		<tr>
			<td><%=vo.getSeq()%></td>
			<td><%=vo.getTitle()%></td>
			<%-- <td><%=vo.getContents()%></td> --%>
			<td><%=vo.getRegdt()%></td>
			<td><%=vo.getId()%></td>
			<td><%=vo.getName()%></td>
		</tr>
	<% } %>
	</table>
</body>
</html>