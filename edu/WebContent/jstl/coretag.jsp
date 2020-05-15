<%@page import="co.yedam.app.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>coretag.jsp</title>
</head>
<body>
<%-- request.setAttribute("id","홍길동") --%>
<c:set var="id" value="홍길동" scope="request"/>

<%-- MemberVO member = new MemberVO();
	session.setAttribute("member", member); 
	vo.setName("김유신"); --%>
<c:set var="member" value="<%=new MemberVO()%>" scope="session"/>
<c:set  value="김유신" target="${member}" property="name"/>

<%-- <% out.print(request.getAttribute("id")); %> --%>
${id} <br>

<%-- out.print((MemberVO)session.getAttribute("member")).getName() );--%>
${sessionScope.member.name}

</body>
</html>