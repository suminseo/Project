package com.qtqt.mvc.board.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.qtqt.mvc.board.model.service.BoardService;
import com.qtqt.mvc.board.model.vo.Board;
import com.qtqt.mvc.common.util.FileRename;


@WebServlet("/board/boardedit")
public class BoardEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BoardEditServlet() {
    	
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
    	int result = 0;
    	Board board = null;
    	String originalFileName = null;
    	String renamedFileName = null;
    	
    	String path = getServletContext().getRealPath("/resources/upload/board");
    	
    	int maxSize = 52428800;
    	String encoding = "UTF-8";
    	
    	MultipartRequest mr = new MultipartRequest(request, path, maxSize ,encoding, new FileRename()); 
    	
    	board = new Board();
    	
    	board.setNo(Integer.parseInt(mr.getParameter("no")));
    	board.setTitle(mr.getParameter("title"));
    	board.setWriterId(mr.getParameter("writer"));
    	board.setContent(mr.getParameter("content"));
    	board.setOriginalFileName(mr.getParameter("originalFileName"));
    	board.setRenamedFileName(mr.getParameter("renamedFileName"));
    	board.setCategory(mr.getParameter("category"));
    	
    	// ????????? ???????????? edit??? ??? ????????? ???????????? ??????
    	originalFileName = mr.getOriginalFileName("upfile");
    	renamedFileName = mr.getFilesystemName("upfile");
    	
    	// ???????????? ????????? ???????????? ??????
    	if(originalFileName != null && !originalFileName.equals("")) {
    		File file = new File(path + "/" + board.getRenamedFileName());
    		
    		// ???????????? ??? ???????????? ????????? ???????????? ??????, ?????? ????????? ???????????? ??????
    		if(file.exists()) {
    			file.delete();
    		}
    		
    		board.setOriginalFileName(originalFileName);
        	board.setRenamedFileName(renamedFileName);
    	} 
    	
    	
    	result = new BoardService().save(board);
    	
    	if(result > 0) {
    		request.setAttribute("msg", "????????? ?????? ??????");
    	} else {
    		request.setAttribute("msg", "????????? ?????? ??????");
    	}
    	
    	
    	request.setAttribute("location", "/board/boardview?no=" + board.getNo());
    	request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
    	
    	
	}

}
