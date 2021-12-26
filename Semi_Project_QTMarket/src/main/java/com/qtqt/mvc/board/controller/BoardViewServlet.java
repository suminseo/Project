package com.qtqt.mvc.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
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
    	
    	int no = Integer.parseInt(request.getParameter("no"));
    	
    	// 조회수 로직
    	// 1. 조회한 이력이 쿠키에 있는지 확인
    	Cookie[] cookies = request.getCookies();
    	String boardHistory = "";
    	boolean hasRead = false;
    	
    	if(cookies != null) {
    		String name = null;
    		String value = null;
    				
    			for(Cookie cookie : cookies) {
    				name = cookie.getName();
    				value = cookie.getValue();
    				
    					if("boardHistory".equals(name)) {
    						boardHistory = value;
    						if(value.contains("|" + no + "|")) {
    							hasRead = true;
    							
    							break;
    						}
    					}
    			}
    	}
    	
    	// 2. 읽은 적 없는 게시글이면 cookie에 기록
    	if(!hasRead) {
    		Cookie cookie = new Cookie("boardHistory", boardHistory + "|" + no + "|");
    		
    		cookie.setMaxAge(-1);
    		response.addCookie(cookie);
    	}
    	
    	
    	Board board = service.findBoardbyNo(no, hasRead);
    	
    	System.out.println(board);
    	
    	request.setAttribute("board", board);
    	
    	request.getRequestDispatcher("/views/board/boardview.jsp").forward(request, response);
	}

}
