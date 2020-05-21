<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', '부서');
        data.addColumn('number', '사원수'); //number를 넣기로 했기때문에 넘버를 넣어야한다. number가 아니면 parseFloat해줘야함
        
        //ajax 호출
        var list = getChartDate();
        data.addRows(list);
        /*         data.addRows([
          ['인사부', 5],
          ['개발부', 10],
          ['기획', 5],
        ]); */

        // Set chart options
        var options = {'title':'부서별 인원수',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        //var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
      
      function getChartDate() {
    	  var list = [];
  		//1. xhr 객체 생성
  		var xhr = new XMLHttpRequest();
  		//2. 콜백함수
  		xhr.onreadystatechange = function() {
  			if(xhr.readyState==4 && xhr.status == 200) {
  				var obj = JSON.parse(xhr.responseText); //string -> 객체
  				//[{department_id:"",cnt:3},{}]구조로 받아오는데 [[],[]]구조로 바굼
  				for(i=0; i<obj.length; i++) {
  					/* var temp = [];
  					temp.app(obj[i].department_id);
  					temp.app(obj[i].cnt);
  					list.add(temp);	 */
  					list.push([obj[i].department_name, obj[i].salary]);
  				}		
  			}
  		}
  		//3. 서버 연결
  		xhr.open("get", "../GetEmpCnt.do", false); //동기로 받아야한다: send하고 값을 받고 가야하기때문에
  		//4. 서버 전송
  		xhr.send();
  		return list;
  	}
    </script>
  </head>

  <body>
    <!--Div that will hold the pie chart-->
    <div id="chart_div"></div>
  </body>
</html>