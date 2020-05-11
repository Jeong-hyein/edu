package co.yedam.app.emp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.emp.EmpDAO;
import co.yedam.app.emp.EmpVO;


@WebServlet("/EmpList.do")
public class EmpList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		EmpDAO edao = new EmpDAO();
		List<EmpVO> list = edao.selectAll();
		request.setAttribute("list", list);
		request.getRequestDispatcher("emp/empList.jsp")
				.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
