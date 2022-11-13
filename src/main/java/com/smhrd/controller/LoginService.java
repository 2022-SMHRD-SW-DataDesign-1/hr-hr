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

public class LoginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("[LoginService]");
		
		
		request.setCharacterEncoding("UTF-8");
		
		String m_Id = request.getParameter("m_Id");
		String m_Pw = request.getParameter("m_Pw");
		
		System.out.println("Id :"+m_Id);
		System.out.println("Pw :"+m_Pw);
		
		MemberDTO dto = new MemberDTO(m_Id, m_Pw);
		
		MemberDTO info = new MemberDAO().login(dto);
		
		
		if (info != null) {
			System.out.println("로그인 객체 받아옴");
			
				HttpSession session = request.getSession();
				
				session.setAttribute("info", info);
				response.sendRedirect("./Main.jsp");
			
		}else {
			HttpSession session = request.getSession();
			System.out.println("로그인 객체 못받아옴");
			session.setAttribute("errMsg", "입력하신 정보가 올바르지 않습니다!");
			response.sendRedirect("./Login.jsp");
		}
		
		
	}

}
