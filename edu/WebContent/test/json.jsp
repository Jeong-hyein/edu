<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>json.jsp</title>
<script>
//JSON: 자바스크립에서 객체를 표현하는 표기법(방법) {},[]
	var emp = {employee_id:100, first_name:"king", last_name:"steven"};
	document.write("last_name: " + emp.last_name);
	
	var arr = [
		{"employee_id:100", first_name:"king", last_name:"steven"}, 	//arr[0], 필드에 "있어야한다.
		{employee_id:101, first_name:"홍", last_name:"길동"},			//arr[1]
		{employee_id:102, first_name:"김", last_name:"유신"}			//arr[2]
	];
	document.write("<br>"+ "last_name: " + arr[1].last_name);
	
	var emp1 = {emp_id:100, name:"이순신", hobby:["read", "ski", "bowl"]};
	//emp1사원의 첫번째 hobby
	document.write("<br> 취미: " + emp1.hobby[0]);
	
	var emp2 = {dept:"개발", emps : [
		{id:200, name:"홍길동", hobby:["read", "ski", "bowl"]},
		{id:201, name:"김유신"},
		{id:202, name:"강감찬"}]};
	//사원이름만 출력
	for(var i =0; i<emp2.emps.length; i++) {
		document.write("<br> 사원이름: "+emp2.emps[i].name);
	}
	
	//첫번째 사원의 첫번째 두번째 취미 출력
	document.write("<br> 두번째 사원의 취미2 "+ emp2.emps[0].name+ ": " + emp2.emps[0].hobby[1]);
	
	
	//object -> string
	var str = JSON.stringify(emp);
	console.log(emp);
	console.log(str);
	
	//string -> object
	var emp3 = JSON.parse(str);
	
	var a = '{"f1":1, "f2":2}'; //string 타입
	var o = JSON.parse(a);  //object 타입
	document.write("<br>" + o.f1);
</script>
</head>
<body>

</body>
</html>