<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>event.jsp</title>
<!-- jquery 쓸려면 꼭 써야함 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function(){ /* window load event랑 같음 */
		$("ul").on("mouseover","li" ,function() { /* on: 없는 태그에도 이벤트 걸수있다. 부모테이블에 건다 */
			$(this).css("backgroundColor","green"); /* this: 내가 mouseover한걸 가르킴 */
		});
			
	
		/* $("li").bind("mouseover", function() { bind: 있는 태그에만 이벤트 걸수있음
			$(this).css("backgroundColor","green");  this: 내가 mouseover한걸 가르킴 
		});*/
		$("#btnAdd").bind("click", function() {
			
			/* $("<li>"): 태그 생성(추가), $("li"): 태그 선택 
			innerHTML이랑 html이랑 같음 
			():태그 내용 (get), (""): 태그의 내용을 변경(set)
			.val()는 input태그의 value속성과 동일(set,get기능 포함)
			*/
			
			$("ul").append($("<li>").html($("#title").val())); 
		});
	});
</script>

</head>
<body>
<input id="title"><button type="button" id="btnAdd">추가</button>
<ul>
	<li>jsp
	<li>java
</ul>


</body>
</html>