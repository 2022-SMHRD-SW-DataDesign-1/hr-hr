package com.smhrd.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.BoardDTO;
import com.smhrd.model.MemberDTO;
import com.smhrd.model.PolicyDAO;
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
	
	// 로그인정보 가져오기
	HttpSession session = request.getSession();
	
	MemberDTO dto = (MemberDTO)session.getAttribute("info");
	
	String writer = dto.getM_Id();
	// 정책 제목
	String title = multi.getParameter("p_title");
	// 정책 파일 불러오기
	String filename = multi.getFilesystemName("p_filename");
	URLEncoder.encode(filename,"UTF-8");
	// 정책 내용 작성
	String content = multi.getParameter("p_content");
	
	System.out.println(title);
	System.out.println(writer);
	System.out.println(filename);
	System.out.println(content);
	
	
	// 정책업로드용 dto
	PolicyDTO pdto = new PolicyDTO(title, writer, content, filename);
	
	PolicyDAO dao = new PolicyDAO();
	int row = dao.upload(pdto);
	
	if(row>0) {
		System.out.println("db에 파일 들어감");
	}else {
		System.out.println("db에 파일안들어감");
	}
	response.sendRedirect("testAll.jsp");
	
	}

}
