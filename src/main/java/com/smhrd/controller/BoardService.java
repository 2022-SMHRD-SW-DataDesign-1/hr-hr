package com.smhrd.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.MultipartResponse;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.BoardDAO;
import com.smhrd.model.BoardDTO;
import com.smhrd.model.MemberDTO;

public class BoardService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("보드 서비스 도착");
		request.setCharacterEncoding("UTF-8");
		
		// MulipartRquest 파라미터 정리 likse 객체 필드
		//저장경로 => webapp의 file 폴더
		String savePath = request.getServletContext().getRealPath("file");
		System.out.println(savePath);
		
		//사이즈
		int maxSize = 10*1024*1024;
		
		//인코딩 방식
		String encoding = "UTF-8";
		
		//중복제거? 같은 이름 파일 업로드시 중복제거
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		
		//파일 같은 용량이 큰 객체 값은 이렇게 받음. 보낼때도 multipart로 인코딩해줫음
		MultipartRequest multi = new MultipartRequest(request,savePath,maxSize,encoding,rename);
		//request, 저장경로,사이즈,인코딩방식,중복제거
		
		//파일 여러개 받기 위한 코드
		String uploadFile = "";
		Enumeration<String> fileNames = multi.getFileNames();
		
		while(fileNames.hasMoreElements()) {
			String name = (String)fileNames.nextElement();
			
			System.out.println("실제 파일명 : "+multi.getOriginalFileName(name));//실제 파일명(유저가 업로드한)
			System.out.println("실제 파일명 : "+multi.getFilesystemName(name));//서버 폴더에 저장되는 파일명(중복피하기위한 파일 명)
			System.out.println("실제 파일명 : "+multi.getContentType(name));//(파일의 확장자)
			if(fileNames.hasMoreElements()==false) {
				uploadFile += multi.getFilesystemName(name); 
				
				break;
			}
			uploadFile += multi.getFilesystemName(name)+","; 
			
		}
		System.out.println(uploadFile);
		String[] check = uploadFile.split(",");// 전부 더해서 저장한 file name ,단위로 다시 String 배열로 바꿔 올 코드
		for(String temp : check) {
			System.out.println(temp);
		}
				
		
		
		//check 해볼 코드 
		HttpSession session  = request.getSession();
		MemberDTO dto =   (MemberDTO)session.getAttribute("info");
		String writer =  dto.getM_Id();
		
		//String filename = multi.getFilesystemName("filename");//이제 이거 대신 uploadFile을쓸거임
		//파일 이름에 한글이 들으가면 얘를 다시불러올때 깨짐
		URLEncoder.encode(uploadFile,"UTF-8");
		String content = multi.getParameter("content");
		
		System.out.println(writer);
		System.out.println(uploadFile);
		System.out.println(content);
		
		BoardDTO bdto = new BoardDTO( writer,  content , uploadFile);
		BoardDAO dao = new BoardDAO();
			int row = dao.upload(bdto);
		
		if(row > 0) {
			System.out.println("DB에 파일 두르감");
		}else {
			System.out.println("DB에 파일 안드루감");
		}
		response.sendRedirect("testAll.jsp");
	}

}


