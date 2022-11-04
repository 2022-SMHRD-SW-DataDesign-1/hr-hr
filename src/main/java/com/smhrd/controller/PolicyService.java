package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.MemberDTO;
import com.smhrd.model.PolicyDTO;


public class PolicyService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	request.setCharacterEncoding("UTF-8");
	
	String savePath = request.getServletContext().getRealPath("file");
	System.out.println(savePath);
	
	int maxSize = 10*1024*1024;
	
	String encoding = "UTF-8";
	
	DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
	
	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, rename);
	
	HttpSession session = request.getSession();
	PolicyDTO dto = (PolicyDTO)session.getAttribute("info");
	String writer = dto.getAdmin_id();
	
	String filename = multi.getFilesystemName("p_filename");
	
	
	}

}
