package com.qtqt.mvc.board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.qtqt.mvc.board.model.vo.Board;
import com.qtqt.mvc.common.util.PageInfo;

import static com.qtqt.mvc.common.jdbc.JDBCTemplate.*;

public class BoardDao {

	public int getBoardCount(Connection connection) {
		
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT COUNT(*) FROM BOARD";
		
		try {
			pstmt = connection.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1);
			} 
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return count;
	}

	public List<Board> findAll(Connection connection, PageInfo pageInfo) {
		List<Board> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = 
							"SELECT RNUM, BOARD_NO, BOARD_TITLE, USER_ID, BOARD_CREATED, ORIGINAL_FILENAME, BOARD_HITS "
							+ "FROM ("
							+    "SELECT ROWNUM AS RNUM, "
							+           "BOARD_NO, "
							+ 			"BOARD_TITLE, "
							+ 			"USER_ID, "
							+ 			"BOARD_CREATED, "
							+			"ORIGINAL_FILENAME, "
							+  			"BOARD_HITS "
							+ 	 "FROM ("
							+ 	    "SELECT B.BOARD_NO, "
							+ 			   "B.BOARD_TITLE, "
							+  			   "M.USER_ID, "
							+ 			   "B.BOARD_CREATED, "
							+			   "B.ORIGINAL_FILENAME, "
							+ 			   "B.BOARD_HITS "
							+ 		"FROM BOARD B "
							+ 		"JOIN QT_USER M ON(B.USER_ID = M.USER_ID) "
							+ 		"ORDER BY B.BOARD_NO DESC"
							+ 	 ")"
							+ ") WHERE RNUM BETWEEN ? and ?";
				
		try {
			pstmt = connection.prepareStatement(query);
			
			pstmt.setInt(1, pageInfo.getStartList());
			pstmt.setInt(2, pageInfo.getEndList());
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Board board = new Board();
				
				board.setNo(rs.getInt("BOARD_NO"));
				board.setRowNum(rs.getInt("RNUM"));
				board.setWriterId(rs.getString("USER_ID"));
				board.setTitle(rs.getString("BOARD_TITLE"));
				board.setCreateDate(rs.getDate("BOARD_CREATED"));
				board.setOriginalFileName(rs.getString("ORIGINAL_FILENAME"));
				board.setHits(rs.getInt("BOARD_HITS"));
				
				list.add(board);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
				
		return list;
	}

}
