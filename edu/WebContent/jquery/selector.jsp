<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>edu/jquery/selector.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script> /* jquery */
$(function() {
	/* movieDiv.style.display = "none"; */
	$("#result").hide();
	/* getElementById("btn") */
	$("#btn").click(function(){ /* $("#btn").bind("click", function(){(원래는: bind 생략가능)랑 $("#btn").click(function(){ 같음*/
		$("#result").toggle(2000); /* show(20000: 2초 동안 천천히 나옴 , toggle:on,off기능*/
	});
});

</script>

<script > 
/* java script: head 안으로 가면 안된다. body가 실행되기 전이라서
-> window.addEventListener("load", function(){}); 해주면 로드되고 함수실행 */
/*		
window.addEventListener("load", init);

	
function inti(){ /* 페이지가 모두 로드되고 나면 실행할거임 */
/*	var movieDiv = document.getElementById("result");
	movieDiv.style.display = "none";
	
	var btnView = document.getElementById("btn");
	btn.addEventListener("click", function() {
		movieDiv.style.display = "";
	});
} */

</script>

</head>
<body>
<button type="button" id="btn" >보이기</button>
<div id="result">영화 상세 정보</div>
<input name="userid">
<input name="userpw">

<table class="table table-striped">
      	
      	<tr><th>나이</th><th> 이름</th><th>몸무게</th></tr>
      	<tr><td>1</td><td>4</td><td>7</td></tr>
      	<tr><td>2</td><td>5</td><td>8</td></tr>
      	<tr><td>3</td><td>6</td><td>9</td></tr>
</table>
</body>
</html>