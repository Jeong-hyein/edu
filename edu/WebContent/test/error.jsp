<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<title>error.jsp</title>
</head>
<body>
<h3>에러발생</h3>
관리자에게 문의바람<br>
에러내용: <%=exception.getMessage() %>

</body>
</html>