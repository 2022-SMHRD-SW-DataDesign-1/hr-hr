package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.FollowDAO;
import com.smhrd.model.FollowDTO;

public class FollowService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int Follow_cnt = Integer.parseInt(request.getParameter("Follow_cnt"));
		String m_id = request.getParameter("m_id");
		String follow_id = request.getParameter("follow_id");

		FollowDAO dao = new FollowDAO();
		FollowDTO dto = new FollowDTO(m_id, follow_id);
		PrintWriter out = response.getWriter();
		
		// 팔로우 여부에 따라 언팔로우, 팔로우 기능 호출 
		if (Follow_cnt > 0) {
			dao.unFollow(dto);
			out.print(false);
		} else {
			dao.follow(dto);
			out.print(true);
		}
	}

}
