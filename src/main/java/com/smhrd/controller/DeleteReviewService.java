package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ReviewDAO;
import com.smhrd.model.ReviewDTO;

public class DeleteReviewService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String m_id = request.getParameter("m_id");
		BigDecimal r_num = new BigDecimal(Integer.parseInt(request.getParameter("r_num")));
		BigDecimal p_num = new BigDecimal(Integer.parseInt(request.getParameter("p_num")));
		String delCheck = request.getParameter("delCheck");
		Boolean Check = Boolean.parseBoolean(delCheck);
		ReviewDAO r_dao = new ReviewDAO();
		ReviewDTO r_dto = new ReviewDTO(r_num, m_id);

		if (Check) {
			// 삭제 진행
			r_dao.reviewDelete(r_dto);
		}

	}

}
