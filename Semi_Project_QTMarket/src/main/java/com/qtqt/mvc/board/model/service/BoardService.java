package com.qtqt.mvc.board.model.service;

import java.sql.Connection;
import java.util.List;

import com.qtqt.mvc.board.model.vo.Board;
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

	public List<Board> getBoardList(PageInfo pageInfo) {
		List<Board> list = null;
		Connection connection = getConnection();
		
		list = dao.findAll(connection, pageInfo);
		
		close(connection);
		
		
		return list;
	}

	public int save(Board board) {
		int result = 0;
		
		Connection connection = getConnection();
		
		if(board.getNo() != 0) {
//			result = dao.updateBoard(connection, board);
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

}




