<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>sqlTag.jsp</title>
</head>
<body>
<!-- rs: 퀴리 실행결과 받을거, data source: "jdbc/muhr" ,p521 -->
<sql:query var="rs" dataSource="jdbc/myhr">

select first_name || ' ' || last_name as first_name,
salary,hire_date from employees order by first_name
		
</sql:query>
<table border="1">
<!-- rows: 전체 데이터가 들어가있음 
	formateDate: prjt-board-boardList.jsp에 적혀있음 -->

<!-- 조회된 컬럼이름만 가져올거임, *쓰지말고 컬럼이름 다 적어 주는게 좋다.-->
	<tr>
		<c:forEach items="${rs.columnNames}" var="columnName">
		<td>${columnName}</td>
		</c:forEach>
	</tr>
	<c:forEach items="${rs.rows}" var="vo">
		<tr>
			<td>${vo.first_name}</td>
			<td>${vo.salary}</td>
			<td>
			<fmt:formatDate value="${vo.hire_date}" pattern="yyyy-MM-dd"/> <!--  type="date"도 써도됨 -->
			</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>