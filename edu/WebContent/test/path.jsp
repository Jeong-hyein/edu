<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>
	<h3>경로 연습</h3>
	<!-- /는 edu앞의 /를 가르킼, 그래서 /edu를 적어줌. -->
	<!-- 	<a href="/edu/BoardList.do">게시글 목록</a><br>
	<img src="/edu/images/11.jpg"> -->
	
	<a href="../BoardList.do">게시글 목록</a><br>
	<img src="../images/17097904_666640573538171_7061376068836512469_o.jpg">
	<!-- http://localjost/edu/images/c.jpg -->
	
	<%
		//application == ServletContext
		out.print(application.getRealPath("/"));
		out.print(application.getMajorVersion());
	%>
</body>
</html>