package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;

public class IDCheckService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 입력한 아이디
		String inputID = request.getParameter("inputID");
		
		// dao idcheck()호출
		MemberDAO dao = new MemberDAO();
		boolean IDCheck = dao.IDCheck(inputID);
		
		// 중복체크 확인(T/F) 결과 넘겨줌
		PrintWriter out = response.getWriter();
		out.print(IDCheck);
		
		
		
		
	}

}
