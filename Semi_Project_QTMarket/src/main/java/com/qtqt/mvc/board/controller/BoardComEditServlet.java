package com.qtqt.mvc.board.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.qtqt.mvc.board.model.service.BoardService;
import com.qtqt.mvc.board.model.vo.Board;
import com.qtqt.mvc.board.model.vo.Reply;
import com.qtqt.mvc.common.util.FileRename;
import com.qtqt.mvc.member.model.vo.Member;


@WebServlet("/board/boardComEdit")
public class BoardComEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private BoardService service = new BoardService();
	
    public BoardComEditServlet() {
    }

    
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	Board board = null;
    	int no = Integer.parseInt(request.getParameter("no"));
    	
    	board = new BoardService().findBoardbyNo(no, true);
    	
    	request.setAttribute("board", board);
    	request.getRequestDispatcher("/views/board/boardComEdit.jsp").forward(request, response);
    	
	}

	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String content = request.getParameter("content");
    	HttpSession session = request.getSession(false);
    	Member loginMember = session != null ? (Member)session.getAttribute("loginMember") : null;
    	
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		int result = 0;

		if(loginMember != null) {
			Reply reply = new Reply();
			
			reply.setBoardNo(boardNo);
//			reply.setWriterId(loginMember.getId());
			reply.setContent(content);
			
			result = new BoardService().updateReply(reply);

    	if(result > 0) {
    		request.setAttribute("msg", "게시글 수정 성공");
    	} else {
    		request.setAttribute("msg", "게시글 수정 실패");
    	}
    	
    	
		} else {
     		request.setAttribute("msg", "로그인 후 사용할 수 있습니다.");
     		request.setAttribute("location", "/");
    	}
    	
    	request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
    	
    	
	
		
	}

}
