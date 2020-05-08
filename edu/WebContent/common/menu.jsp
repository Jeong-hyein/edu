<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #111;
}
</style>

<ul>
  <li><a class="active" href="/edu/index.jsp">Home</a></li>
  <li><a href="/edu/member/login.jsp">로그인</a></li>
  <li><a href="/edu/Logout.do">로그아웃</a></li>
  <li><a href="/edu/member/memberInsert.jsp">회원가입</a></li>
  <li><a href="/edu/MemberUpdate.do">정보수정</a></li>
  <li><a href="/edu/MemberList.do">회원목록</a></li>
  <li><a href="/edu/board/boardInsert.jsp">게시판 등록</a></li>
  <li><a href="/edu/BoardList.do">게시판 목록</a></li>
</ul>