package com.qtqt.mvc.board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.qtqt.mvc.admin.model.vo.GoodsBoard;
import com.qtqt.mvc.common.util.PageInfo;

import static com.qtqt.mvc.common.jdbc.JDBCTemplate.*;

public class BoardDao {

	public int getBoardCount(Connection connection) {
		
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT COUNT(*) FROM GOODS";
		
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

	public int updateBoard(Connection connection, GoodsBoard board) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "UPDATE BOARD SET TITLE=?,CONTENT=?,ORIGINAL_FILENAME=?,RENAMED_FILENAME=?,MODIFY_DATE=SYSDATE WHERE NO=?";
		
		try {
			pstmt = connection.prepareStatement(query);
			
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, board.getOriginalFileName());
			pstmt.setString(4, board.getRenamedFileName());
			pstmt.setInt(5, board.getNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertBoard(Connection connection, GoodsBoard board) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO GOODS VALUES(SEQ_GOODS_NO.NEXTVAL,?,?,?,?,DEFAULT,DEFAULT,?,?,?,?,?)";
		
		try {
			pstmt = connection.prepareStatement(query);
			
			pstmt.setString(1, board.getWriterId());
			pstmt.setString(2, board.getTitle());
			pstmt.setString(3, board.getPrice());
			pstmt.setString(4, board.getContent());
			pstmt.setString(5, board.getCate());
			pstmt.setString(6, board.getOriginalFileName());
			pstmt.setString(7, board.getRenamedFileName());
			pstmt.setString(8, board.getArea1());
			pstmt.setString(9, board.getArea2());
			
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public List<GoodsBoard> findAll(Connection connection, PageInfo pageInfo) {
		List<GoodsBoard> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = 
				"SELECT ROWNUM, G_PRODUCT, USER_ID, G_PRODUCT_NAME, G_PRICE, G_CONTENT, G_DATE, G_HITS, G_CATE, G_O_FILENAME, G_AREA1, G_AREA2 "
				+ "FROM GOODS "
				+ "WHERE ROWNUM BETWEEN ? and ?";
		
		try {
			pstmt = connection.prepareStatement(query);
			
			pstmt.setInt(1, pageInfo.getStartList());
			pstmt.setInt(2, pageInfo.getEndList());
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				GoodsBoard board = new GoodsBoard();
				
				board.setNo(rs.getInt("G_PRODUCT"));
				board.setRowNum(rs.getInt("ROWNUM"));
				board.setWriterId(rs.getString("USER_ID"));
				board.setTitle(rs.getString("G_PRODUCT_NAME"));
				board.setPrice(rs.getString("G_PRICE"));
				board.setContent(rs.getString("G_CONTENT"));
				board.setCreateDate(rs.getDate("G_DATE"));
				board.setReadCount(rs.getInt("G_HITS"));
				board.setCate(rs.getString("G_CATE"));
				board.setOriginalFileName(rs.getString("G_O_FILENAME"));
				board.setArea1(rs.getString("G_AREA1"));
				board.setArea2(rs.getString("G_AREA2"));
				
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

	public int updateReadCount(Connection connection, GoodsBoard board) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "UPDATE GOODS SET G_HITS=? WHERE NO=?";
		
		try {
			pstmt = connection.prepareStatement(query);
			
			board.setReadCount(board.getReadCount() + 1);
			
			pstmt.setInt(1, board.getReadCount());
			pstmt.setInt(2, board.getNo());
			
			result = pstmt.executeUpdate();			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}		
		
		return result;
	}

	public GoodsBoard findBoardByNo(Connection connection, int no) {
		GoodsBoard board = null; 
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = 
				"SELECT "
				+ 	"G_PRODUCT, "
				+   "USER_ID, "
				+   "G_PRODUCT_NAME, "
				+   "G_PRICE, "
				+   "G_CONTENT, "
				+   "G_DATE, "
				+   "G_HITS, "
				+   "G_CATE, "
				+   "G_O_FILENAME "
				+   "G_R_FILENAME "
				+ "FROM GOODS "
				+ "WHERE G_PRODUCT=?";
		
		try {
			pstmt = connection.prepareStatement(query);
			
			pstmt.setInt(1, no);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				board = new GoodsBoard();
				
				board.setNo(rs.getInt("G_PRODUCT"));
				board.setWriterId(rs.getString("USER_ID"));
				board.setTitle(rs.getString("G_PRODUCT_NAME"));
				board.setPrice(rs.getString("G_PRICE"));
				board.setContent(rs.getString("G_CONTENT"));
				board.setCreateDate(rs.getDate("G_DATE"));
				board.setReadCount(rs.getInt("G_HITS"));
				board.setCate(rs.getString("G_CATE"));
				board.setOriginalFileName(rs.getString("G_O_FILENAME"));
				board.setRenamedFileName(rs.getString("G_R_FILENAME"));
				
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return board;
	}





}