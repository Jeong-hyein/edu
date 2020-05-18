<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>edu/movie.jsp</title>
<script>
	function getBoxOffice() {
		//1. xhr 객체 생성
		var xhr = new XMLHttpRequest();
		//2. 콜백함수
		xhr.onreadystatechange = function() {
			if(xhr.readyState==4 && xhr.status == 200) {
				var obj = JSON.parse(xhr.responseText); //string -> 객체
				console.log(obj);
				for(var i = 0; i<obj.boxOfficeResult.dailyBoxOfficeList.length; i++) {	
					console.dir(obj);
					result.innerHTML += (i+1) +". "+ obj.boxOfficeResult.dailyBoxOfficeList[i].movieNm + "<br>";
					
				}
			}
		}
		//3. 서버 연결
		xhr.open("get", "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=20200517");
		//4. 서버 전송
		xhr.send();
	}
</script>
</head>
<body>
<button type="button" onclick="getBoxOffice()">박스오피스 조회</button>
<div id="result"></div>
</body>
</html>