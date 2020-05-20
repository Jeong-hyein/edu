package co.yedam.app.board;

import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import co.yedam.app.common.FileRenamePolicy;

/**
 * Servlet implementation class BoardInsert
 */
@WebServlet("/BoardInsert.do")
@MultipartConfig(location="d:/upload") //request.getParts()랑 같음
public class BoardInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("board/boardInsert.jsp")
		.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html; charset=UTF-8"); 필터를 추가해놔서 할 필요없다.
//		request.setCharacterEncoding("utf-8");
		System.out.println("게시글 등록 서블릿 실행");
		
		//파라미터 받기
		String id = request.getParameter("id"); //서비스 로직 처리 같이하는법 vo.setId(request.getParameter("id")
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String filename = request.getParameter("filename");
		
		
		//2. 서비스 로직 처리 (DAO)
		BoardDAO boardDAO = new BoardDAO();
		BoardVO board = new BoardVO();
		board.setId(id);
		board.setTitle(title);
		board.setContents(contents);
		board.setFilename(filename);
		
		//첨부파일 처리, 작성자 제목 내용 첨부파일을 파트로 나눔
		Part part = request.getPart("filename");
		String fileName = getFileName(part); //filename 추출
		String path = "d:/upload";
		if(fileName != null && !fileName.isEmpty()) {
			//중복파일명 처리
			File f = FileRenamePolicy.rename(new File(path, fileName));
			part.write(f.getAbsolutePath()); //fileName 저장, 업로드 폴더에 파일저장
			board.setFilename(f.getName()); //vo에 저장, 파일면을 vo에 담기
		}
		
		int r = boardDAO.boardInsert(board);
		
		//3. 결과 출력
//		PrintWriter out = response.getWriter();
//		out.print("<br>작성자 = " + id);
//		out.append("<br>제목 = " + title);
//		out.append("<br>내용 = " + contents);
//		out.print("<br>처리된 건수 = " + r);
		response.sendRedirect("BoardList.do");
	}

	private String getFileName(Part part) throws UnsupportedEncodingException {
		for (String cd : part.getHeader("Content-Disposition").split(";")) {
			if (cd.trim().startsWith("filename")) {
				return cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;
	}

	private String readParameterValue(Part part) throws IOException {
		InputStreamReader reader = new InputStreamReader(part.getInputStream(), "utf-8");
		char[] data = new char[512];
		int len = -1; 
		StringBuilder builder = new StringBuilder();
		while ((len = reader.read(data)) != -1) {
			builder.append(data, 0, len);
		}
		return builder.toString();
	}
	
}
