<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>edu/test/ajaxXml.jsp</title>
<script>
	function findName() {
		//1. xhr 객체 생성
		var xhr = new XMLHttpRequest();
		//2. 콜백함수
		xhr.onreadystatechange = function() {
			if(xhr.readyState==4 && xhr.status == 200) {
				var xmlDoc = xhr.responseXML;
				//elements-> 배열임
				var id = xmlDoc.getElementsByTagName("id")[0].firstChild.nodeValue; //id 태그를 찾고,		
				var name = xmlDoc.getElementsByTagName("name")[0].firstChild.nodeValue; 
				result.innerHTML = id + " : " + name;
			}
		}
		//3. 서버 연결
		xhr.open("get", "../FindNameXML?id=" + id.value);
		//4. 서버 전송
		xhr.send();
	}

</script>
</head>
<body>
<form name="frm">
	<input name="id" id="id" onchange="findName()"><span id="result"></span>
	
</form>

</body>
</html>