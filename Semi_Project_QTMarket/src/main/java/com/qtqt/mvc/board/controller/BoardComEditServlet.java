package com.qtqt.mvc.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qtqt.mvc.board.model.service.BoardService;
import com.qtqt.mvc.board.model.vo.Board;
import com.qtqt.mvc.board.model.vo.Reply;


@WebServlet("/board/boardComEdit")
public class BoardComEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BoardComEditServlet() {
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	Board board = null;
    	int no = Integer.parseInt(request.getParameter("no"));
    	
    	board = new BoardService().findBoardbyNo(no, true);
    	
    	request.setAttribute("board", board);
    	request.getRequestDispatcher("/views/board/boardedit.jsp").forward(request, response);
    	
	}

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	Board board = null;
    	int result = 0;
    	Reply reply = null;
    	
    	reply = new Reply();
    	
    	reply.setNo(Integer.parseInt(request.getParameter("no")));
    	reply.setContent(request.getParameter("content"));
    	
    	
    	result = new BoardService().updateReply(reply);
    	
    	if(result > 0) {
    		request.setAttribute("msg", "게시글 수정 성공");
    	} else {
    		request.setAttribute("msg", "게시글 수정 실패");
    	}
    	
    	
    	request.setAttribute("location", "/board/boardview?no=" + board.getNo());
    	request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
    	
    	
	}

}
