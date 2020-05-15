<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>edu/empSalList.jsp</title>
<!-- p512 -->
</head>
<body>
<h3>부서별 급여 평균</h3>
<table border="1">
	<tr>
	<th>부서 id</th>
	<th>부서 이름</th>
	<th>급여</th>
	<th>부서 사람 수</th>
	<th>평균 급여</th>
	</tr>
<%-- <c:forEach var="vo" items="${salList}" >
		<tr>
		<td>${vo.department_id}</td>
		<td>${vo.department_name}</td>
		<td>${vo.salary}</td>
		<td>${vo.cnt}</td>
		<td>${vo.avgsal}</td>
		</tr>
	</c:forEach> --%>
	<c:forEach var="vo" items="${salList}" >
		<tr>
		<td>${vo.department_id}</td>
		<td>${vo.department_name}</td>
		<!-- groupingUsed="false": ,가 빠짐 -->
		<%-- <td><fmt:formatNumber value="${vo.salary}" type="currency" currencySymbol="$" groupingUsed="false"/></td> --%>
		<%-- <td><fmt:formatNumber value="${vo.salary}" type="number" maxFractionDigits="1"/></td> --%>
		<td align="right"><fmt:formatNumber value="${vo.salary}" pattern="\#,###.00"/></td>
		<td>${vo.cnt}</td>
		<td align="right">
		<%-- <fmt:formatNumber value="${vo.avgsal}" type="number"/></td> --%>
		<fmt:parseNumber value="${vo.avgsal}" var="numAvg" /> <!-- 2.1버전은 자동으로 parse해줌 -->
		<fmt:formatNumber value="${numAvg}" type="number"/></td>
		</tr>
	</c:forEach>
</table>
</body>
</html>