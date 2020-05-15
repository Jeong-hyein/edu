<%@page import="java.util.ArrayList"%>
<%@page import="co.yedam.app.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	.mailbg {background-color: yellowgreen};
</style>
<title>edu/memberList.jsp</title>
</head>
<body>
	<%@include file="/common/menu.jsp"%>
	<%=getServletContext().getRealPath("/") %>
	<%-- jsp 주석, 웹에 표시 안됨 --%>
	<!-- html 주석, 웹에 표시됨 -->
	<h3>회원목록</h3>
	<table border="1">
		<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>성별</td>
		</tr>
		<% ArrayList<MemberVO> list = (ArrayList<MemberVO>) request.getAttribute("list");
		for (MemberVO vo : list) { %>
		<tr <%if("m".equals(vo.getGender())) { %> class="mailbg" <% } %> >
			<td><%=vo.getId()%></td>
			<td><%=vo.getName()%></td>
			<td><%=vo.getGender()%></td>
		</tr>
	<% } %>
		
</body>
</html>