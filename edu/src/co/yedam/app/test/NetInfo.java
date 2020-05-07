package co.yedam.app.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NetInfo
 */
@WebServlet("/NetInfo")
public class NetInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NetInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		//클라이언트 정보, 다른 ip 주소 들어가면 내 ip주소가 나온다.
		out.print("<br> 클라이언트 IP = " + request.getRemoteAddr());
		
		//요청 헤더
		out.print("<br>User-Agent : " + request.getHeader("User-Agent"));
		
		//서버의 호스트, 포트
		out.print("<br> 프로토콜 = " + request.getScheme());
		out.print("<br> URI = " + request.getRequestURI());
		out.print("<br> 포트 = " + request.getServerPort());
		out.print("<br> 서버 address = " + request.getLocalAddr());
		
		//파라미터 :
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
