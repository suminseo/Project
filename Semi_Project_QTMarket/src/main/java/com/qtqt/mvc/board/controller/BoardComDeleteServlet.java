package com.qtqt.mvc.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.qtqt.mvc.board.model.service.BoardService;
import com.qtqt.mvc.member.model.vo.Member;


@WebServlet("/board/boardComDelete")
public class BoardComDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private BoardService service = new BoardService();

    public BoardComDeleteServlet() {
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	HttpSession session = request.getSession(false);
    	Member loginMember = session != null ? (Member)session.getAttribute("loginMember") : null;
    	
    	int result = 0;
    	int no = Integer.parseInt(request.getParameter("no"));
    	result = service.deleteReply(no);

    	System.out.println(no);
    	
    	if(result > 0) {
    		request.setAttribute("msg", "댓글 삭제 성공");
    		request.setAttribute("location", "/QT/community");
    	} else {
    		request.setAttribute("msg", "댓글 삭제 실패");
			request.setAttribute("location", "/QT/community");
    	}
    	
    	request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
	}


}
