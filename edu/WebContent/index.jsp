<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>사나이index</title>
</head>
<body>
<%@include file="/common/menu.jsp" %>
<%-- <% Date date = new Date(); %> --%>
<h1>정혜인 홈페이지</h1>
방문을 환영합니다
현재 시간은 ${today}
<%-- 현재시간은 <%=date%> --%>
<%--<%=request.getRealPath("/") %>  --%>

</body>
</html>