package co.yedam.app.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PathTest
 */
//edu 다음의 /를 가르킴, 그래서 /edu를 안적는다.
//@WebServlet("/PathTest.do") //http://localhost/edu/PathTest.do
@WebServlet("/path/PathTest.do") //http://localhost/edu/path/PathTest.do, 서블릿 실행하면 이미지 안나옴.
//나오게 하려면 jsp에서 경로에 ../를 붙이면 나온다. 
// /path1/path2/PathTest.do -> jsp에서 ../../로 해야한다.
public class PathTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/test/path.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
