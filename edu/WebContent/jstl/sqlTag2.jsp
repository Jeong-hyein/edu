<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>sqlTag2.jsp</title>
</head>
<body>
<!-- rs: 퀴리 실행결과 받을거, data source: "jdbc/muhr" ,p521 -->
<h3>부서별 급여가 제일 높은 사람의 정보(급여, 부서: 이름,입사일 넣으면 안됨.)</h3>
<sql:query var="rs" dataSource="jdbc/myhr">

select e.first_name,e.last_name, e.department_id, e.salary, d.department_name
from employees e , (select  department_id, max(salary) as MaxSal
                        from employees
                        where department_id is not null
                        GROUP BY department_id
                        order by department_id) s
                  , departments d
where e.department_id = s.department_id
and e.salary = s.MaxSal
and e.department_id = d.department_id

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
			<td>${vo.last_name}</td>
			<td>${vo.department_id}</td>
			<td>${vo.salary}</td>
			<td>${vo.department_name}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>