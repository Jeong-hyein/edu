package co.yedam.app;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.common.Device;

/**
 * Servlet implementation class HomeServ
 */
@WebServlet({ "/index.do", "/home.do" })
public class HomeServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html; charset=utf-8");
		//dao
		Date date = new Date();
//		response.getWriter().append("<h1>정혜인 홈페이지</h1>")
//							.append("어서 다시 나가세여.")
//							.append("현재 시간은: " + date.toString());
		
		//date값 jsp에 넘겨줌(5/6)
		request.setAttribute("today", date); //setAttribute로 저장해서 넘겨줌
		request.getRequestDispatcher("/index.jsp")
			   .forward(request, response);
		
		
		//디바이스에 따라서 모바일페이지로 이동(f12에서 모바일모드로 바꾸고 새로고침)
		String device = Device.getDevice(request);
		String page = "";
		if(device.equals(Device.IS_MOBILE))
			page = "/mobile/index.jsp";
		else
			page = "/index.jsp";
		request.getRequestDispatcher(page)
				.forward(request, response);
		
	}

}
