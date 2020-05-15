<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%> 
<!DOCTYPE html>
<html>
<head>
<title>edu/test/paging.jsp</title>

<script>
	function gopage(p) {
		location.href = "paging.jsp?p=" +p
	}
</script>

</head>
<body>
<h2>페이징 테스트</h2>
<my:deptSelect></my:deptSelect><br>
<my:paging st="2" ed="8" p="${param.p}"></my:paging> <br>
<my:paging ed="6" p="${param.p}"></my:paging>
</body>
</html>