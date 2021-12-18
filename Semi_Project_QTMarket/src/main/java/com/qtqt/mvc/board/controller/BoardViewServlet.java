package com.qtqt.mvc.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qtqt.mvc.board.model.service.BoardService;
import com.qtqt.mvc.board.model.vo.Board;


@WebServlet("/board/boardview")
public class BoardViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private BoardService service = new BoardService();
	
    public BoardViewServlet() {
    }

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// 사용자가 숫자가 아닌 형식이나 없는 페이지를 URL 직접 입력했을 때 404 에러 해결 로직 필요!
    	int no = Integer.parseInt(request.getParameter("no"));
    	
    	Board board = service.findBoardbyNo(no);
    	
    	System.out.println(board);
    	
    	request.setAttribute("board", board);
    	
    	request.getRequestDispatcher("/views/board/boardview.jsp").forward(request, response);
	}

}
