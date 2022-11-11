package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.javassist.compiler.ast.Member;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;
import com.smhrd.model.ReviewLikeDAO;
import com.smhrd.model.ReviewLikeDTO;

public class ReviewLikeService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String m_id = request.getParameter("m_id");
		BigDecimal r_num = new BigDecimal(Integer.parseInt(request.getParameter("r_num")));
		int is_Like = Integer.parseInt(request.getParameter("is_Like"));
		String writer = request.getParameter("writer");
		
		MemberDAO m_dao = new MemberDAO();

		System.out.println("아이디" +m_id);
		System.out.println("작성자" +writer);
		System.out.println("리뷰번호" +r_num );
		System.out.println("여부" +is_Like );
		
		
		ReviewLikeDTO rldto = new ReviewLikeDTO(m_id, r_num);
		ReviewLikeDAO rldao = new ReviewLikeDAO();
		PrintWriter out = response.getWriter();

		if (is_Like > 0) {
			// 해제
			rldao.reviewLikeMinus(rldto);
			rldao.setReviewLikeCount(r_num);
			int point = m_dao.UsefulPointCheck(writer);
			System.out.println(point);
			BigDecimal m_Point = new BigDecimal(point);
			MemberDTO m_dto = new MemberDTO(writer, m_Point);
			m_dao.PointUpdate(m_dto);
			out.print(false);
		} else {
			// 등록
			rldao.reviewLikePlus(rldto);
			rldao.setReviewLikeCount(r_num);
			int point = m_dao.UsefulPointCheck(writer);
			BigDecimal m_Point = new BigDecimal(point);
			System.out.println(point);
			MemberDTO m_dto = new MemberDTO(writer, m_Point);
			m_dao.PointUpdate(m_dto);
			out.print(true);
		}

	}

}
