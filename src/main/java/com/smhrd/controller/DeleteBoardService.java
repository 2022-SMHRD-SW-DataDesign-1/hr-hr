package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardDAO;

public class DeleteBoardService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String m_id = request.getParameter("m_id");
		String delCheck = request.getParameter("delCheck");
		Boolean Check = Boolean.parseBoolean(delCheck);
		BigDecimal b_num = new BigDecimal(Integer.parseInt(request.getParameter("b_num")));
		
		BoardDAO b_dao = new BoardDAO();
		System.out.println("되나?");
		if(Check) {
			System.out.println("되나??");
		b_dao.deleteBoard(b_num);
		System.out.println("되나???");
		}
		
		PrintWriter out = response.getWriter();
		out.print(true);
		
		
	}

}
