package com.qtqt.mvc.member.model.dao;

import static com.qtqt.mvc.common.jdbc.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.qtqt.mvc.member.model.vo.Member;

public class MemberDao {

	public Member findMemberById(Connection connection, String id) {
		Member member = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String query = "SELECT * FROM QT_USER WHERE USER_ID=?";
		
		try {
			pstm = connection.prepareStatement(query);
			
			pstm.setString(1, id);
			rs = pstm.executeQuery();
			
			if(rs.next()) {
				member = new Member();
				
				member.setId(rs.getString("USER_ID"));
				member.setPassword(rs.getString("USER_PASSWORD"));
				member.setName(rs.getString("USER_NAME"));
				member.setEmail(rs.getString("USER_EMAIL"));
				member.setOriginalProfileName(rs.getString("ORIGINAL_PROFILENAME"));
				member.setRenamedProfileName(rs.getString("RENAMED_PROFILENAME"));
				member.setPhone(rs.getString("USER_PHONE"));
				member.setRole(rs.getString("USER_ROLE"));
				member.setArea1(rs.getString("USER_AREA1"));
				member.setArea2(rs.getString("USER_AREA2"));
				member.setEnrollDate(rs.getDate("USER_ENROLLDATE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
		}
		
		return member;
	}

	public int insertMember(Connection connection, Member member) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO QT_USER VALUES(?,?,?,?,?,?,?,DEFAULT,DEFAULT,?,?)";
		
		try {
			pstmt = connection.prepareStatement(query);
			
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getOriginalProfileName());
			pstmt.setString(6, member.getRenamedProfileName());
			pstmt.setString(7, member.getPhone());
			pstmt.setString(8, member.getArea1());
			pstmt.setString(9, member.getArea2());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public int deleteMember(Connection connection, String string) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "DELETE FROM QT_USER WHERE USER_ID=?";
		
		try {
			pstmt = connection.prepareStatement(query);
			
			pstmt.setString(1, string);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateMember(Connection connection, Member member) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "UPDATE QT_USER SET USER_PASSWORD=?,USER_PHONE=?,USER_EMAIL=?, ORIGINAL_PROFILENAME=?, RENAMED_PROFILENAME=?, USER_AREA1=?,USER_AREA2=? WHERE USER_ID=?";
		
		try {
			pstmt = connection.prepareStatement(query);
			
			pstmt.setString(1, member.getPassword());
			pstmt.setString(2, member.getPhone());
			pstmt.setString(3, member.getEmail());
			pstmt.setString(4, member.getOriginalProfileName());
			pstmt.setString(5, member.getRenamedProfileName());
			pstmt.setString(6, member.getArea1());
			pstmt.setString(7, member.getArea2());
			pstmt.setString(8, member.getId());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}


}