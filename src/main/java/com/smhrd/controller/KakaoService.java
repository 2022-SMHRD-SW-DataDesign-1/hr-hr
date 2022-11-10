package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

public class KakaoService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 입력한 아이디
		String m_id = request.getParameter("m_id");
		String m_pw = request.getParameter("m_pw");
		String m_email = request.getParameter("m_email");
		String m_nickname = request.getParameter("m_nickname");
		String m_phone = request.getParameter("m_Phone");
		
		
		System.out.println(m_id);
		System.out.println(m_pw);
		System.out.println(m_email);
		System.out.println(m_nickname);
		System.out.println(m_phone);
		
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = new MemberDTO(m_id, m_pw, m_email, m_nickname, m_phone);
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		if(dao.IDCheck(m_id)) {
			MemberDTO info = new MemberDAO().login(dto);
			session.setAttribute("info", info);
			out.print("not join but login");
			return ;
			
		}else {
			dao.join(dto);
			MemberDTO info = new MemberDAO().login(dto);
			session.setAttribute("info", info);
			out.print("join + login");
			return ;
		}
		
		

		
		
		
		
	}


}
