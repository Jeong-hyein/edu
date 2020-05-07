package co.yedam.app.board;

import java.sql.Connection;
import java.sql.PreparedStatement;

import co.yedam.app.common.ConnectionManager;

public class BoardDAO {
	int r = 0;
	Connection conn = null;
	PreparedStatement psmt = null;
	
	public int boardInsert(BoardVO board) {

		try {
			// 1. DB 연결
			conn = ConnectionManager.getConnnect();

			// 2. sql구문 준비
			String sql = "insert into board (seq, title, contents, regdt, id)"
					+ " values (seq_board.nextval, ?, ?, sysdate, ?)";

			psmt = conn.prepareStatement(sql);

			// 3. 실행
			psmt.setString(1, board.getTitle());
			psmt.setString(2, board.getContents());
			psmt.setString(3, board.getId());

			r = psmt.executeUpdate();

			// 4. 결과처리
			System.out.println(r + " 건이 등록됨.");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 5. 연결해제
			ConnectionManager.close(conn);
		}

		return r;
	}
}
