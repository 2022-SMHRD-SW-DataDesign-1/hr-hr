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
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

public class LikesPlusService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// b_num을 int로 타입 변경 
		request.setCharacterEncoding("UTF-8");
		String m_id =  request.getParameter("m_id"); 
		BigDecimal b_num = new BigDecimal(Integer.parseInt(request.getParameter("b_num"))); 
		int is_liked = Integer.parseInt(request.getParameter("is_liked"));
		
		LikesDTO ldto = new LikesDTO(m_id, b_num);
		LikesDAO ldao = new LikesDAO();
		PrintWriter out = response.getWriter();
		
		MemberDAO m_dao = new MemberDAO();
		String writer = m_dao.findWriter(b_num);
		
		if(is_liked > 0) {
			// 좋아요 해제
			ldao.LikesMinus(ldto);
			System.out.println("like minus 메서드 실행이후");
			ldao.setCount(b_num);//
			System.out.println("set count 이후");
			int point = m_dao.UsefulPointCheck(writer);
			BigDecimal m_Point = new BigDecimal(point);
			MemberDTO m_dto = new MemberDTO(writer, m_Point);
			m_dao.PointUpdate(m_dto);
			out.print(false);
			
		}else {
			// 좋아요 등록
			ldao.LikesPlus(ldto);
			System.out.println("plus 메서드 실행이후");
			ldao.setCount(b_num);
			System.out.println("set count 이후");
			int point = m_dao.UsefulPointCheck(writer);
			BigDecimal m_Point = new BigDecimal(point);
			MemberDTO m_dto = new MemberDTO(writer, m_Point);
			m_dao.PointUpdate(m_dto);
			out.print(true);
		}
		
		
	}

}
