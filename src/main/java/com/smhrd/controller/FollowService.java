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

		int follow_cnt = Integer.parseInt(request.getParameter("follow_cnt"));
		String m_id = request.getParameter("m_id");
		String follow_id = request.getParameter("follow_id");
		System.out.println("팔로우 여부 :"+ follow_cnt);
		System.out.println("내 아이디 : "+m_id);
		System.out.println("팔로우한 아이디 : "+follow_id);

		// dao생성
		FollowDAO dao = new FollowDAO();
		
		// dto생성
		FollowDTO dto = new FollowDTO(m_id, follow_id);
		
		// 팔로우 여부에 따라 언팔로우, 팔로우 기능 호출 
		if (follow_cnt > 0) {
			System.out.println("언팔 메소드 먹나?");
			dao.unFollow(dto);
			System.out.println("언팔");
		} else {
			System.out.println("팔 메소드 먹나?");
			dao.follow(dto);
			System.out.println("팔");
		}
		response.sendRedirect("./testAll2.jsp");
	}

}
