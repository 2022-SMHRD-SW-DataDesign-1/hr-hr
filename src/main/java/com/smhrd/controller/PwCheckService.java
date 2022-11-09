package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PwCheckService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 입력한 비밀번호
		String inputPW = request.getParameter("inputPW");
		String inputPWCheck = request.getParameter("inputPWCheck");
		
		boolean pwcheck;
		
		if(inputPW.equals(inputPWCheck)) {
			pwcheck = true;
		}else {
			pwcheck = false;
		}
		
		PrintWriter out = response.getWriter();
		out.print(pwcheck);
		
		
		
	}

}
