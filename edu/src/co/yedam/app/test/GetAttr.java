package co.yedam.app.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GetAttr
 */

//SetAttr을 먼저 실행하고 GetAttr을 실행해야한다.
@WebServlet("/GetAttr") 
public class GetAttr extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		ServletContext context = getServletContext();
		HttpSession session = request.getSession();
		// SetAttr에서 저장할때 charset으로 했기때문에 읽을때도 똑같이 해줘야한다.
		String charset = (String) context.getAttribute("charset"); //서버 재시작할때까지 남아있음
		String cart = (String) session.getAttribute("cart"); //모든 브라우저를 닫아야 사라짐, login
//	SetAttr에 request.getRequestDispatcher("/GetAttr").forward(request, response); 해줘야 홍길동이 나온다. 안해주면 null
		String name = (String) request.getAttribute("name"); //요청할때만 잠시 필요할때만 사용
		out.append("<br>charset= " + charset)
			.append("<br>cart= " + cart)
			.append("<br>name= " + name);
	}

	
}
