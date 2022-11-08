package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BoardDAO;

public class LikesPlusService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// b_num을 int로 타입 변경 
		String b_num = request.getParameter("b_num");
		BoardDAO dao = new BoardDAO();
		int row = dao.LikesPlus(b_num);
		
		PrintWriter out = response.getWriter();
		out.print(row);
		
	}

}
