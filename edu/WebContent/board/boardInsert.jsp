<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
<h1>등록페이지</h1>
<form action="../BoardInsert.do"" method="post">
	작성자 : <input type="text" name="id" id="id" /><br/>
	제목 : <input type="text" name="title" id="title" /><br/>
	내용 : <br>
	<textarea rows="10" cols="30" name="contents" id="contents"></textarea><br/>
	
	<input type="submit" value="전송" />
	<input type="reset" value="지우기" />
</form>
</body>
</html>