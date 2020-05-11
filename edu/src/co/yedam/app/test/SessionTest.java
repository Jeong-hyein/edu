package co.yedam.app.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionTest
 */
@WebServlet("/SessionTest")
public class SessionTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionTest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
//		유지시간 디폴트: 1800(30분), web.xml에서도 바꿀수 있다.
		session.setMaxInactiveInterval(20); //세션유지시간 20초 지나고 새로고침하면 id랑 생성시간이 바뀐다.(아무것도 안하면)
		out.print("<br>sessionId: " + session.getId());
		out.print("<br>session 생성시간: " + new Date(session.getCreationTime())); //Date에 넣어줘서 date형태로 바꿈
		out.print("<br>마지막 접근시간: " + new Date(session.getLastAccessedTime()));
		out.print("<br>유지시간: " + session.getMaxInactiveInterval());
		//경과시간(현재시간 - 생성시간)
		long cur = System.currentTimeMillis();
					//new Date(0 - getTime()
		long dul = (cur - session.getCreationTime())/1000;
		out.print("<br>경과시간: " + dul);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
