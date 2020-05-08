<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원관리</title>
</head>
<body>
<a href="memberInsert.jsp">등록</a><br>
<!-- <form action="/edu/MemberUpdateForm.do"> -->
<form action="/edu/MemberUpdate.do" method="get">
<input name="id"/>
<button>수정</button>
</form>
<form action="/edu/MemberDelete.do">
<input name="id"/>
<button>삭제</button>
</form>

<a href="">목록</a>
</body>
</html>