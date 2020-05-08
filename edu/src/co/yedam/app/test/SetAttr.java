package co.yedam.app.test;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SetAttr
 */
@WebServlet("/SetAttr")
public class SetAttr extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public SetAttr() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//서블릿컨텍스트(웹어플리케이션)
		ServletContext context = getServletContext();
		HttpSession session = request.getSession();
		context.setAttribute("charset", "utf-8");   //환경변수
		session.setAttribute("cart", "good1");		//장바구니
		request.setAttribute("name", "홍길동");		//요청
//		response.getWriter().append("save attribute");
		request.getRequestDispatcher("/GetAttr")
				.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
