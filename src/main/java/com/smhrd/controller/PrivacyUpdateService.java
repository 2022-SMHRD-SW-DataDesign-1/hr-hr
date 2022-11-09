package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

public class PrivacyUpdateService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		MemberDTO dto = (MemberDTO)session.getAttribute("info");
		String m_id = dto.getM_Id();
		
		String m_Email = request.getParameter("m_Email");
		String m_Pw = request.getParameter("m_Pw");
		String m_Phone = request.getParameter("m_Phone");
		
		System.out.println(m_Email);
		System.out.println(m_Pw);
		System.out.println(m_Phone);
		MemberDTO privacy_dto = new MemberDTO(m_id, m_Pw, m_Email, m_Phone);
		MemberDAO dao = new MemberDAO();
		
		int row = dao.privacyUpdate(privacy_dto);
		System.out.println(row);
		
		session.setAttribute("info", privacy_dto);
		response.sendRedirect("./testAll.jsp");
	}

}
