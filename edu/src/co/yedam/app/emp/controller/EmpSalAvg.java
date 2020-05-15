package co.yedam.app.emp.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.emp.EmpDAO;

/**
 * Servlet implementation class EmpSalAvg
 */
@WebServlet("/EmpSalAvg")
public class EmpSalAvg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpSalAvg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 파라미터
		//2. 서비스로직(DAO)
		List<Map<String, Object>> list = EmpDAO.getInstance().selectDeptSal();
		//3. 결과 저장
		request.setAttribute("salList", list); //넘겨주는게 salList
		//4. 페이지 이동(jsp: forward, .do: sendredirect)
		request.getRequestDispatcher("/emp/empSalList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
