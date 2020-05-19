package co.yedam.app.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.common.FileDownloadHelper;

/**
 * Servlet implementation class FileDown
 */
@WebServlet("/FileDown.do")
public class FileDown extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//게시글번호 파라미터
		String seq = request.getParameter("seq");
		//단건조회해서 파일이름 확인
		BoardDAO dao = new BoardDAO();
		BoardVO vo = dao.getBorad(seq)
;		
		//다운로드
		if(vo.getFilename() != null ) {
			// 응답 헤더 다운로드로 설정
			response.reset();
			int filesize = 0;
			String fileName = new String(vo.getFilename().getBytes("utf-8"),
			"iso-8859-1");
			String realPath = "d:/upload/" + vo.getFilename();
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName+"\""); //다운받을 파일명
			response.setHeader("Content-Transfer-Encoding", "binary");
			//response.setContentLength( filesize );
			response.setHeader("Pragma", "no-cache;");
			response.setHeader("Expires", "-1;");
			
			FileDownloadHelper.copy(realPath, response.getOutputStream()); //realPath에 있는걸 response로 다운받는다.
			response.getOutputStream().close();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
