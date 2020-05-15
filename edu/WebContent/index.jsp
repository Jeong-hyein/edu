<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>사나이index</title>
</head>
<body>
<%-- <%=application.getRealPath("/") %>  --%>
<!-- D:\Dev\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\work\Catalina\localhost\edu\org\apache\jsp -->

<%@include file="/common/menu.jsp" %> <!-- common폴더가 안생긴다. -->
<%-- <% if(loginID) %>  --%> <!-- menu.jsp에 loginId가 정의 되어있고 menu.jsp를 불러왔기때문에 사용가능 -->
<%-- <% request.getRequestDispatcher("/common/menu.jsp").include(request, response); %> --%>
<%-- <jsp:include page="/common/menu.jsp"/> --%> <!-- 실행하면 common안에 파일이 생긴다. -->"
<%-- <% Date date = new Date(); %> --%>
<h1>정혜인 홈페이지</h1>
방문을 환영합니다<br>
현재 시간은 ${today}
<br>

<%-- <%out.print ( getServletContext().getRealPath("/")); %> --%>

<%-- 현재시간은 <%=date%> --%>
<%--<%=request.getRealPath("/") %>  --%>

<%
	//request.getRequestDispatcher("BoardList.do").forward(request, response);
	//밑에꺼랑 같은거임
%>
<%-- <jsp:forward page="MemberList.do"></jsp:forward> --%>


</body>
</html>