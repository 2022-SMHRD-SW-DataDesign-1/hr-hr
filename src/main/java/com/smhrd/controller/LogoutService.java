package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[LogoutService]");

		// 로그아웃 : 로그인 된 정보 지우기 -> session info 지우기
		HttpSession session = request.getSession();

		// 특정 세션 삭제
		session.removeAttribute("info");
		System.out.println("로그아웃 성공");

		// 전체 세션 종료
		// session.invalidate();

		RequestDispatcher rd = request.getRequestDispatcher("./homepage.jsp");
		rd.forward(request, response);

	}

}
