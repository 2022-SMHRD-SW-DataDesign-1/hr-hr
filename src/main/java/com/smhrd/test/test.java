package com.smhrd.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.testDAO;

public class test extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("test");
		
		String test = request.getParameter("test");
		
		System.out.println(test);
		testDAO dao = new testDAO();
		int row = dao.testInsert(test);
		
	}

}
