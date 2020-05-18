package co.yedam.app.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//p227
@WebServlet("/Login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 파라미터
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		//2. 서비스 로직
		MemberDAO dao = new MemberDAO();
		dao.getMember(id); //단건조회
		MemberVO vo = dao.getMember(id);
		
		response.setContentType("text/html; charset=utf-8"); //=하고 공백주면 안된다.
		PrintWriter out = response.getWriter();
		
		//forward는 전달, include는 불러오는거
//		request.getRequestDispatcher("/common/menu.jsp").include(request, response); 
		
		//id 조회결과 없으면 id 없다.
		if(vo.getId() == null) { //id 오류, isEmpty(): 없다는 뜻
			out.print("id 오류");			
		}else if(! vo.getPwd().equals(pwd)) { //조회되면 pwd 검사해서 틀리면 pwd 오류, equals가 아니라면
			out.print("pwd 오류");
		} else { //login ok, 다 맞으면 로그인
//			out.print("로그인 성공");
			//세션에 로그인 여부를 저장
			HttpSession session = request.getSession();
			session.setAttribute("loginId", id); //"loginId"는 내가 지정
			session.setAttribute("loginMember", vo); //object 타입이라서 전체 저장가능
			request.getRequestDispatcher("/common/menu.jsp")
					.include(request, response);
			out.print("로그인 성공");
		}
		//3. 결과 저장
		
		
		//4. 뷰페이지로 포워드
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//post로 받아서 doget을 부른다.
		doGet(request, response);
	}

}
