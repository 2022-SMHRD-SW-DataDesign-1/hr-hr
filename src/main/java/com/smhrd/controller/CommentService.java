package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.CommentDAO;
import com.smhrd.model.CommentDTO;
import com.smhrd.model.MemberDTO;

public class CommentService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
	    MemberDTO dto = (MemberDTO)session.getAttribute("info");
		String m_id = dto.getM_Id();
		BigDecimal b_num = new BigDecimal(Integer.parseInt(request.getParameter("b_num")));
		String cmt_content = request.getParameter("c_content");
		System.out.println(m_id);
		System.out.println(b_num);
		System.out.println(cmt_content);
		
		
		CommentDTO cdto = new CommentDTO(b_num, cmt_content , m_id );
		CommentDAO dao = new CommentDAO();
		int row = dao.writeComment(cdto);
		
		response.sendRedirect("./testAll.jsp");
		 
	}

}
