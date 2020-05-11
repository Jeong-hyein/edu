<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page trimDirectiveWhitespaces="true"%> <!-- 빈줄 안보이게 한다. -->
<!DOCTYPE html>
<html>
<head>
<title>tagTest, 스크립트 요소 연습</title>
</head>
<body>
<h3>5행 7열</h3>
<table border="1">
<%-- 스크립트 요소 연습  --%>
<%! //메소드 선언 
	public int mul(int m, int n) {
	return m*n;
	}
%>
 <% for (int i=1; i<6; i++) { %>
	<tr>
		<% for (int j=1; j<8; j++) { %>
		<%-- <td><%=i*j %></td> --%>
		<%-- <td><%out.print(i*j);%></td> --%>
		<td><%=mul(i,j)%></td>
		<%} %>
	</tr>
 <% } %>
</table>

</body>
</html>