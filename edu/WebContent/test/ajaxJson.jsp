<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>edu/test/ajaxJson.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	function findNameJquery() {
		//1. load 함수
		/* $("#result").load("../FindNameJson?id=" + id.value, function() {
			alert("end");
		}); */
		
		//2. getJson, url:필수, 파라미터, 함수
		/* $.getJSON("../FindNameJson", {id:id.value}, function(response) {  r로 적어도 됨: 결과 받는거 
			$("#result").html(response.name);
		}); */
		
		//3. ajax 함수, 디폴트:동기, false:비동기 ajax만 비동기 가능한듯.
		$.ajax({
			url : "../FindNameJson",
			data : {id:id.value},
			dataType : "json" /* 결과를 json으로 받겠다 */
			success : function(response) {
				$("#result").html(response.name);
			},
			async : false
		});
	}



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
	<input name="id" id="id" onchange="findNameJquery()"><br><span id="result"></span>
	
</form>

</body>
</html>