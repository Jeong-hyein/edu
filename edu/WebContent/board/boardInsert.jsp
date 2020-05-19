<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>boardInsert</title>
</head>
<body>
<%@include file="/common/menu.jsp" %>
<h1>등록페이지</h1>
<form action="../BoardInsert.do"" method="post" enctype="multipart/form-data">
	<!-- 작성자 : <input type="text" name="id" id="id" /><br/> -->
	작성자: <input name="id" value="${loginId}"><br> <!--null 빼려고, <=session.getAttribute("loginId")%> 대신 ${loginId}넣음  -->
	제목 : <input type="text" name="title" id="title" /><br/>
	내용 : <br>
	<textarea rows="10" cols="30" name="contents" id="contents"></textarea><br/>
	첨부파일: <input type="file" name="filename"><br>
	
	<input type="submit" value="전송" />
	<input type="reset" value="지우기" />
</form>
</body>
</html>