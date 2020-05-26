package co.yedam.app.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



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
//		response.setContentType("text/html; charset=UTF-8");
//		PrintWriter out = response.getWriter();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("/board/boardList.jsp")
		.forward(request, response);
		
//		request.getRequestDispatcher("/common/menu.jsp").include(request, response);
		
//		out.print("<h3>게시판목록</h3>");
//		out.print("<table border>");
//		out.print("<tr>");
//		out.print("<td>" + "게시물 번호" + "</td>");
//		out.print("<td>" + "아이디" + "</td>");
//		out.print("<td>" + "이름" + "</td>");
//		out.print("<td>" + "제목" + "</td>");
//		out.print("<td>" + "내용" + "</td>");
//		out.print("<td>" + "작성일자" + "</td>");
//		out.print("</tr>");
//		for(BoardVO vo : list) {
//			out.print("<tr>");
//			out.print("<td>" + vo.getSeq() + "</td>");
//			out.print("<td>" + vo.getId() + "</td>");
//			out.print("<td>" + vo.getName() + "</td>");
//			out.print("<td>" + vo.getTitle() + "</td>");
//			out.print("<td>" + vo.getContents() + "</td>");
//			out.print("<td>" + vo.getRegdt() + "</td>");
//			out.print("</tr>");
//		}
//		out.print("</table>");
		
		BoardVO vo = dao.getBorad("2");
		getDday(vo.getRegdt());
		
	}
	


	@SuppressWarnings("deprecation")
	private void getDday(String regdt) {
		System.out.println(regdt);
		
		int idx = regdt.lastIndexOf(" ");
		
		String date = regdt.substring(0,idx);
		
		Date dday = new Date(regdt);
		Date now = new Date();
		System.out.println(dday.getTime());
		System.out.println(now);
		long gap = dday.getTime() - now.getTime();
		System.out.println(gap);
		long result = (long) (Math.floor(gap/(1000*60*60*24))*-1);
		
		System.out.println(result);
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
