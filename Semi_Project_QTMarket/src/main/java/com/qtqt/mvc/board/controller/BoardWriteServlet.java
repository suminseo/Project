package com.qtqt.mvc.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.qtqt.mvc.common.util.FileRename;
import com.qtqt.mvc.member.model.vo.Member;


@WebServlet("/board/boardwrite")
public class BoardWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BoardWriteServlet() {
    }

    
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession(false); 
    	Member loginMember = session != null ? (Member)session.getAttribute("loginMember") : null;
    	String viewName = "/views/board/boardwrite.jsp";

    	if(loginMember == null) {
    		viewName = "/views/common/msg.jsp";
        	request.setAttribute("msg", "로그인 후 사용할 수 있습니다.");
        	request.setAttribute("location", "/");
        		
    	}
    	
    	request.getRequestDispatcher(viewName).forward(request, response);
	}

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String path = getServletContext().getRealPath("/resources/upload/board");
    	
    	// 파일 사이즈 (50MB)
    	int maxSize = 52428800;
    	
    	String encoding = "UTF-8";
    	
    	MultipartRequest mr = new MultipartRequest(request, path, maxSize ,encoding, new FileRename()); 
    	
    	String title = mr.getParameter("title");
    	String writerId = mr.getParameter("writerId");
    	String content = mr.getParameter("content");
    	
    	String fileName = mr.getFilesystemName("upfile");
    	String upfileName = mr.getOriginalFileName("upfile");

    	
    	System.out.println(title);
    	System.out.println(writerId);
    	System.out.println(content);
    	
    	System.out.println(fileName);
    	System.out.println(upfileName);
    	
    	
	}

}
