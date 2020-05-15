<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="st" %> <!-- required: 필수속성 -->
<%@ attribute name="ed" required="true" %>
<%@ attribute name="p"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<c:if test="${empty st}">
	<c:set var="st" value="1"></c:set>
</c:if>
<c:if test="${empty p}">
	<c:set var="p" value="1"></c:set>
</c:if>


<style>
.pagination {
  display: inline-block;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid #ddd;
  margin: 0 4px;
}

.pagination a.active {
  background-color: #4CAF50;
  color: white;
  border: 1px solid #4CAF50;
}
.pagination a:hover:not(.active) {background-color: #ddd;}
</style>



<div class="pagination">
  <a href="#">&laquo;</a>
  <c:forEach begin="${st}" end="${ed}" var="i">
  <a onclick="gopage(${i})" href="#" <c:if test="${p==i}"> class="active"</c:if> >${i}</a>
  </c:forEach>
  <a href="#">&raquo;</a>
</div>
