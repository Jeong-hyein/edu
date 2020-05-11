<%@page import="co.yedam.app.member.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page trimDirectiveWhitespaces="true"%> 
<!DOCTYPE html>
<html>
<head>
<style>
div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 180px;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
}

div.desc {
  padding: 15px;
  text-align: center;
}
</style>
</head>
<body>
<% ArrayList<MemberVO> list = (ArrayList<MemberVO>) request.getAttribute("list");
		for (MemberVO vo : list) { %>
<div class="gallery">
  <a target="_blank" href="img_5terre.jpg">
    <img src="<%=request.getContextPath() %>/images/17097904_666640573538171_7061376068836512469_o.jpg" alt="Cinque Terre" width="600" height="400">
  </a>
  <div class="desc"><%=vo.getId()%> <%=vo.getName()%></div>
</div>
<%} %>


</body>
</html>