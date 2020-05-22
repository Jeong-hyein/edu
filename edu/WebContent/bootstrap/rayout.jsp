<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<!-- <style>
	div {border: 1px solid blue;}
</style> -->
<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body>
<div class="container"> <!-- 항상 container로 감싸고 시작 -->
<!-- 헤더 시작 -->
<div class="alert alert-primary" role="alert"> <!-- 도움말 같은거에 사용 -->
  A simple primary alert—check it out!
  <a href="#" class="btn btn-info">도움말</a>
  <span class="btn btn-secondary">메인</span>
	<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Launch demo modal
</button>

</div>
<!-- 헤더 끝 -->

<!-- 바디 시작 -->
<div class="row">
    <div class="col-xl-6 col-md-12 border border-warning"> <!-- col-6 : 50%, 총합이 12가 되야한다. boarder-success:색깔-->
      	메뉴
      	<table class="table table-striped">
      	<tbody>
      	<tr><th>나이</th><th> 이름</th><th>몸무게</th></tr>
      	<tr><td>1</td><td>4</td><td>7</td></tr>
      	<tr><td>2</td><td>5</td><td>8</td></tr>
      	<tr><td>3</td><td>6</td><td>9</td></tr>
      	</tbody>
      	</table>
    </div>
    <div class="col-xl-6 col-md-12">
      	내용
      		<form >
	      		<div class="form-group row"><label class="col-xl-3 col-md-12">id</label>
	      		<div class="col-xl-9 col-md-12"><input class="form-control"></div></div>
	      		
	      		<div class="form-group row"><label class="col-xl-3 col-md-12">name</label>
	      		<div class="col-xl-9 col-md-12"><input class="form-control"></div></div>
	      		
	      		<div class="form-group row"><label class="col-xl-3 col-md-12">수신여부</label>
	      		<div class="col-xl-9 col-md-12"><input type="checkbox" class="form-control"></div></div>
      		</form>
    </div>
  </div>  
 <!-- 바디 끝 --> 
 
 <!-- 풋터 시작 -->
  <div class="row">
      <div class="col-xl-4"> <!-- col-6 : 50%, 총합이 12가 되야한다. , xl:해상도-->
      One of three columns
    </div>
    <div class="col-xl-4">
      One of three columns
    </div>
     <div class="col-xl-4">
      One of three columns
    </div>
  </div>  
 <!-- 풋터 끝 -->
</div> 
<!-- 컨테이너 끝 -->



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>




</body>
</html>