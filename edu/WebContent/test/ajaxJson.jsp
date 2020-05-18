<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>edu/test/ajaxJson.jsp</title>
<script>
	function findName() {
		//1. xhr 객체 생성
		var xhr = new XMLHttpRequest();
		//2. 콜백함수
		xhr.onreadystatechange = function() {
			if(xhr.readyState==4 && xhr.status == 200) {
				var obj = JSON.parse(xhr.responseText); //string -> 객체
				result.innerHTML = obj.id + " : " + obj.name;
			}
		}
		//3. 서버 연결
		xhr.open("get", "../FindNameJson?id=" + id.value);
		//4. 서버 전송
		xhr.send();
	}

</script>
</head>
<body>
<form name="frm">
	<input name="id" id="id" onchange="findName()"><br><span id="result"></span>
	
</form>

</body>
</html>