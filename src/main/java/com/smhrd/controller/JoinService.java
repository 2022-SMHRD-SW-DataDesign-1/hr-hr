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

public class JoinService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("[JoinService]");
		
		request.setCharacterEncoding("UTF-8");
		
		String m_Id = request.getParameter("m_Id");
		String m_Pw = request.getParameter("m_Pw");
		String m_Email = request.getParameter("m_Email");
		String m_Nickname = request.getParameter("m_Nickname");
		String m_Phone = request.getParameter("m_Phone");
		
		
		System.out.println(m_Id);
		System.out.println(m_Pw);
		System.out.println(m_Email);
		System.out.println(m_Nickname);
		System.out.println(m_Phone);
		
		MemberDTO dto = new MemberDTO(m_Id, m_Pw, m_Email, m_Nickname, m_Phone);
		
		int row = new MemberDAO().join(dto);// 실행한 결과 row로 받음
		System.out.println(row);
		
		// 결과값 확인 -> 페이지이동 // ,db에 들어갔을 때 회원가입 성공했을 시 어디로 이동할지??
		String moveURL = null;
		if(row > 0) {
			System.out.println("회원가입 성공");
			HttpSession session = request.getSession();
			
			moveURL = "./testResult.jsp";
			request.setAttribute("m_Id", m_Id);
			
		}else {
			System.out.println("회원가입 실패");
			moveURL = "./testResult.jsp";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(moveURL);
		rd.forward(request, response);
		
		
		
	}

}
