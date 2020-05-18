package co.yedam.app.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.member.MemberDAO;
import co.yedam.app.member.MemberVO;

/**
 * Servlet implementation class FindNameJson
 */
@WebServlet("/FindNameJson")
public class FindNameJson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.파라미터 받기
		String id = request.getParameter("id");

		// 2. 서비스 로직 처리, 아이디가 있나 없나 확인
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.getMember(id);

		// 3. 결과 전송(출력) -> responseText로 간다?
		response.setContentType("text/plain; charset=utf-8"); //plaind or html
		PrintWriter out = response.getWriter();
		
		//{"id":"id", "name":"name"}
		out.print("{\"id\":\""+vo.getId() +"\",\"name\":\""+vo.getName()+"\"}");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
