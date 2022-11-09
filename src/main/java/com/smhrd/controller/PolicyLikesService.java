package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.LikesDAO;
import com.smhrd.model.LikesDTO;
import com.smhrd.model.PolicyLikesDAO;
import com.smhrd.model.PolicyLikesDTO;

public class PolicyLikesService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String m_id =  request.getParameter("m_id"); 
		BigDecimal p_num = new BigDecimal(Integer.parseInt(request.getParameter("p_num"))); 
		int is_like = Integer.parseInt(request.getParameter("is_like"));
		
		PolicyLikesDTO pl_dto = new PolicyLikesDTO(m_id, p_num);
		PolicyLikesDAO pl_dao = new PolicyLikesDAO();
		PrintWriter out = response.getWriter();
		
		if(is_like >0) {
			pl_dao.PolicyLikesMinus(pl_dto);
			pl_dao.PolicysetCount(p_num);
			out.print(false);
		}else {
			pl_dao.PolicyLikesPlus(pl_dto);
			pl_dao.PolicysetCount(p_num);	
			out.print(true);
		}
		
		
		
		
		
		
		
		
	}

}
