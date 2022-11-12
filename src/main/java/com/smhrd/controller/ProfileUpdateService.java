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

public class ProfileUpdateService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		MemberDTO dto = (MemberDTO)session.getAttribute("info");
		String m_id = dto.getM_Id();
		String m_Nickname = request.getParameter("m_Nickname");
		String m_Profile = request.getParameter("m_Profile");
		
		
		MemberDTO update_dto = new MemberDTO(m_id, m_Nickname, m_Profile);
		MemberDAO dao = new MemberDAO();
		
		dao.profileUpdate(update_dto);
		MemberDTO up_aft_dto = dao.information(m_id);
		
		session.setAttribute("info", up_aft_dto);
		response.sendRedirect("./Main.jsp");
	}

}
