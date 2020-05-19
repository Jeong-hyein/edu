<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>edu/memberInsert.jsp</title>
<script>
	function idDupCheck() {
		//1. xhr 객체 생성(Xml Http Request)
		var xhttp = new XMLHttpRequest();
		//2. 콜백함수지정
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4) {
				if (this.status == 200) {
					console.log("ajax 요청 완료");
					document.getElementById("result").innerHTML = this.responseText;
					// innerHTML : "result"> 이쪽을 가르킴</span
					// this: xhr을 가르킴, responseText: 응답결과를 id가 result인 
				} else {
					document.getElementById("result").innerHTML = this.status
							+ this.statusText;
				}
			} else {
				//로딩중=
				document.getElementById("result").innerHTML = "로딩중";
			}
		};
		//3.서버연결
		var param = "id=" + document.frm.id.value;
		
		//GET 방식
		//xhttp.open("GET", "../IdDupCheck.do?" + param, true); //"../IdDupCheck1.do?"로 치면 404로 나온다.	
		//xhttp.send();
		
		//POST 방식
		xhttp.open("POST", "../IdDupCheck.do?", true); 
		//비동기로 하기 않겠다(false): 동기식, 완료가 먼저 나온다, send가 끝나야 넘어간다.
		xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		//4. 서버전송
		xhttp.send(param);
		console.log("ajax 요청 시작");
	}
</script>
</head>
<body>
	<%@include file="/common/menu.jsp"%>
	<h3>회원 정보</h3>
	<form action="../MemberInsert.do" method="post" name=frm>
		ID : <input type="text" name="id" id="id" onchange="idDupCheck()" /> <span
			id="result"></span><br /> 비밀번호 : <input type="password" name="pwd"
			id="pwd" /><br /> 이름 : <input type="text" name="name" id="name" /><br />
		취미 : <input type="checkbox" name="hobby" id="hobby1" value="h01" />
		등산 <input type="checkbox" name="hobby" id="hobby2" value="h02" /> 운동
		<input type="checkbox" name="hobby" id="hobby3" value="h03" /> 독서 <input
			type="checkbox" name="hobby" id="hobby4" value="h04" /> 여행 <br /> 
			성별: <input type="radio" name="gender" value="m" /> 남자 <input
			type="radio" name="gender" value="f" /> 여자 <br /> 
			종교 : <select
			name="religion" id="religion">
			<option value="r01">기독교
			<option value="r02">불교
			<option value="r03">천주교
			<option value="r04">무교
		</select> <br /> 자기소개: <br />
		<textarea rows="10" cols="30" name="introduction" id="introduction"></textarea>
		<br /> <input type="submit" value="전송" /> <input type="reset"
			value="지우기" />


	</form>
</body>
</html>