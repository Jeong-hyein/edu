package co.yedam.app.test;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//web.xml에서 하는거는 @WebServlet에서도 하면된다. 

@WebServlet(urlPatterns = {"/test1.do", "/test2.do"}, 
			loadOnStartup = 1) //숫자가 낮을수록 먼저 실행한다. 

//"/test.do" : http://localhost/edu/test.do를 요청하라는 거임, test로 가서 service를 실행한다.
//"/board/test.do"로 사용해도 됨, http://localhost/edu/board/test.do
// 두개로 해두면 주소변경해서 들어갈수있다. test.do는 에러나옴.
public class TestServ extends HttpServlet{
	//이름 주는 법이 다름, web.xml에서 주거나 지역변수(lName) 주거나, gName주거나(전역변수, global)
	//모든 요청에서 공유
	String gName = "홍길동"; 
	
	//p170 
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("testserv init() 실행");
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lName = "김유신"; //local name이라는거임(지역변수)
		System.out.println("testserv service() 실행"); //콘솔창에 나온다.
		
		response.setContentType("text/html; charset=utf-8"); //한글 인코딩 해주는거
		response.getWriter().append("<hr>테스트 서블릿 실행");
//		.append("pName = " + getInitParameter("pName")) //this.getInitParameter("pName"): this 생략
//		.append("gName = " + gName)
//		.append("lName = " + lName);
		
		//공용이라서 name=kim에서 name=park으로 바꾸면 모든 웹에서 name=park으로 바뀜
		//모든 쓰레드에 적용된다.
		gName = request.getParameter("name"); 
		for(int i = 0; i<10; i++) {
			response.getWriter().append(gName + "<br>");
			response.getWriter().flush(); //
			//주소에서 ?name=test하면 test가 2초 간격으로 찍힌다.
			try {
				Thread.sleep(2000); //2초
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			
			
		}
	}
	

}
