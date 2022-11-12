package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.net.URLEncoder;
import java.util.Enumeration;

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
	System.out.println("정책서비스 도착");
	request.setCharacterEncoding("UTF-8");
	
	//String savePath = request.getServletContext().getRealPath("file");
	String savePath = "C:\\Users\\smhrd\\git\\hr-hr\\src\\main\\webapp\\file";
	System.out.println(savePath);
	
	int maxSize = 10*1024*1024;
	
	String encoding = "UTF-8";
	
	DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
	
	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, rename);
	
	String uploadFile = "";
	
	Enumeration<String> fileNames = multi.getFileNames();
	
	while(fileNames.hasMoreElements()) {
		String name = (String)fileNames.nextElement();
		
		System.out.println("실제파일명 : "+multi.getOriginalFileName(name));
		System.out.println("서버파일명 :"+multi.getFilesystemName(name));
		System.out.println("확장자 : "+multi.getContentType(name));
		
		if(fileNames.hasMoreElements() == false) {
			uploadFile += multi.getFilesystemName(name);
			break;
		}
		uploadFile += multi.getFilesystemName(name)+",";
		
	}
	
	System.out.println(uploadFile); //전부 더해서 저장한 file name , 단위로 다시 String 배열로 바꿔올 코드 
	
	
	 // // 다시 불러올 때 , 단위로 쪼개야 하니까 실험코드 
	String[] check = uploadFile.split(",");
	for(String temp: check) {  System.out.println(temp); }
	  
	  // check 해볼 코드 // 세션을 받는다 (아이디)
			
	HttpSession session = request.getSession();

	
	//로그인한 정보에서 가지고 오니까 MemberDT에서 일단 가지고 올게
	MemberDTO dto = (MemberDTO)session.getAttribute("info");
	
	//로그인한 아ㅣ디 // 작성자
	String writer = dto.getM_Id();
			
	
	//파일 이름에 한글이 들어가면 얘를 다시 불러올 때 깨짐
	URLEncoder.encode(uploadFile, "UTF-8");
	String title = multi.getParameter("p_title");
	String content = multi.getParameter("p_content");
			
	System.out.println(writer);
	System.out.println(title);
	System.out.println(content);
				
	PolicyDTO pdto = new PolicyDTO(title, writer, content, uploadFile);
	
	PolicyDAO dao = new PolicyDAO();
	
	int row = dao.upload(pdto);
	
	if(row > 0) {
		System.out.println("DB에 파일들어감");
	}else {
		System.out.println("DB에 파일 안들어감");
	}
	response.sendRedirect("testAll2.jsp");
	
	}

}
