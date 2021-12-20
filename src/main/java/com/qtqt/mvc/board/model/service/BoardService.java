package com.qtqt.mvc.board.model.service;

import java.sql.Connection;
import java.util.List;

import com.qtqt.mvc.admin.model.vo.GoodsBoard;
import com.qtqt.mvc.board.model.dao.BoardDao;
import com.qtqt.mvc.common.util.PageInfo;

import static com.qtqt.mvc.common.jdbc.JDBCTemplate.*;

public class BoardService {
	
	private BoardDao dao = new BoardDao();

	public int getBoardCount() {
		int count = 0; 
		
		Connection connection = getConnection();
		
		count = dao.getBoardCount(connection);
		
		close(connection);
		
		return count;
	}

	public int save(GoodsBoard board) {
		int result = 0;
		Connection connection = getConnection();
		
		if (board.getNo() != 0 ) {
			result = dao.updateBoard(connection, board);
		} else {
			result = dao.insertBoard(connection, board);
		}
		
		if(result > 0) {
			commit(connection);
		} else {
			rollback(connection);
		}
		
		close(connection);		
		
		return result;
	}

	public List<GoodsBoard> getBoardList(PageInfo pageInfo) {
		List<GoodsBoard> list = null;
		Connection connection = getConnection();
		
		list = dao.findAll(connection, pageInfo);
		
		close(connection);
		
		return list;
	}

	public GoodsBoard findBoardByNo(int no, boolean hasRead) {
		GoodsBoard board = null;
		Connection connection = getConnection();
		
		board = dao.findBoardByNo(connection, no);
		
		// 게시글 조회수를 증가시키는 로직
		if(board != null && !hasRead) {
			int result = dao.updateReadCount(connection, board);
			
			if(result > 0) {
				commit(connection);
			} else {
				rollback(connection);
			}
		}
		
		close(connection);		
		
		return board;
	}

	

}