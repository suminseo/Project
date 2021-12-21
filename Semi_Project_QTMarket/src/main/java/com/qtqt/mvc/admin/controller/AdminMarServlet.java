package com.qtqt.mvc.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/QT/admin/market")
public class AdminMarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminMarServlet() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/admin/MarketManagement.jsp").forward(request, response);
	}

}
