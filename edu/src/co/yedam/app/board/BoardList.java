package co.yedam.app.board;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.member.MemberDAO;
import co.yedam.app.member.MemberVO;

/**
 * Servlet implementation class BoardList
 */
@WebServlet("/BoardList.do")
public class BoardList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = (String) request.getSession().getAttribute("loginId"); //이름 같아야한다.
		if(id == null) {
			response.sendRedirect("/edu/member/login.jsp");
			return;
		} 
		
		BoardDAO dao = new BoardDAO();
		ArrayList<BoardVO> list = dao.getBoardList();
		
		//3. 결과 출력(out.print) or 결과저장해서 view forward
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		request.getRequestDispatcher("/common/menu.jsp").include(request, response);
		
		out.print("<h3>게시판목록</h3>");
		out.print("<table border>");
		out.print("<tr>");
		out.print("<td>" + "게시물 번호" + "</td>");
		out.print("<td>" + "아이디" + "</td>");
		out.print("<td>" + "이름" + "</td>");
		out.print("<td>" + "제목" + "</td>");
		out.print("<td>" + "내용" + "</td>");
		out.print("<td>" + "작성일자" + "</td>");
		out.print("</tr>");
		for(BoardVO vo : list) {
			out.print("<tr>");
			out.print("<td>" + vo.getSeq() + "</td>");
			out.print("<td>" + vo.getId() + "</td>");
			out.print("<td>" + vo.getName() + "</td>");
			out.print("<td>" + vo.getTitle() + "</td>");
			out.print("<td>" + vo.getContents() + "</td>");
			out.print("<td>" + vo.getRegdt() + "</td>");
			out.print("</tr>");
		}
		out.print("</table>");
	}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
