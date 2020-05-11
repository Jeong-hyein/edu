<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--buffer="1kb": buffer size, buffer가 차면 비워라: autoFlush="true" -->
<%@page buffer="1kb" autoFlush="false" errorPage="error.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>directive.jsp</title>
</head>
<body>
<% for(int i =0; i<2000; i++)
	out.print(1);
%>
</body>
</html>