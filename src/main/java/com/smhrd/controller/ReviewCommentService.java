package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ReviewCommentDAO;
import com.smhrd.model.ReviewCommentDTO;

public class ReviewCommentService extends HttpServlet {
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String m_id = request.getParameter("m_id");
		String r_c_content = request.getParameter("r_c_content");
		String m_nickname = request.getParameter("m_nickname");
		int r_num = Integer.parseInt(request.getParameter("r_num"));
		BigDecimal big_r_num = new BigDecimal(r_num);
		
		ReviewCommentDAO dao = new ReviewCommentDAO();
		ReviewCommentDTO dto = new ReviewCommentDTO(m_id, big_r_num, r_c_content, m_nickname);
		dao.writeReviewComment(dto);
		
		PrintWriter out = response.getWriter();
		
		out.print(true);
		
	}

	
	
	
}
