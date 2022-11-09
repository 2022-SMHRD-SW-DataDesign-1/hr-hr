package com.smhrd.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.reflection.SystemMetaObject;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.MemberDTO;
import com.smhrd.model.PolicyDAO;
import com.smhrd.model.PolicyDTO;

public class PolicyUpdateService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("정책수정서비스 도착");
		
		// 왜 인코딩을 먼저해줄까?
		// 요청값을 .. 인코딩해줄거야..
		request.setCharacterEncoding("UTF-8");

		
		
		String savePath = request.getServletContext().getRealPath("file");
		System.out.println(savePath); //경로를 보여줄거야..
		
		// 사이즈 왜 사이즈를 인코딩보다 먼저써주느늑거라? 그냥 먼저 써도 되잖아
		int maxSize = 10*1024*1024;
		
		// 인코딩방식
		String encoding = "UTF-8";
	
		
		// 중복제거 같은 이름 파일 업로드시 중복제거
		
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		// 파일 같은 용량이 큰 객체값은 이렇세 받음 . 보낼때도 multipart로 인코딩 해줬음
		
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, rename);
		// request, 저장경로, 사이즈, 인코딩방식, 중복제거
		
		// 파일 여러개 받기위한 코드
		String uploadFile = "";
		//Enumeration이라는 객체에 파일명을 다 담아 Arraylist하고 비슷한거임
		Enumeration<String> fileNames = multi.getFileNames();// 파일 명이 fileNames에 다 들어가 있음 
		 // 열거 한다
		
		//먼저 폴더에 저장되고 db에 저장되는데
		while(fileNames.hasMoreElements()) {// hasmoreeleemssms 다음 요소가 있냐? boolean
			
			String name = (String)fileNames.nextElement();// filenames 객체 하나를 일단 담는 String변수 name
			
			System.out.println("실제 파일명 : "+multi.getOriginalFileName(name));// 실제 파일명(유저가 업로드한)
			System.out.println("실제 파일명 : "+multi.getFilesystemName(name));/// 서버 폴더에 저장되는 파일명(중복피하기 위한 파일명)
			System.out.println("실제 파일명: "+multi.getContentType(name));// 파일의 확장자
			
	
			if(fileNames.hasMoreElements()== false) {// 다음 파일이 있니? 없으면 밑의 문장을 실행해라
				uploadFile += multi.getFilesystemName(name);// 마지막인 경우에는 , 없이 더해
				break;
			}
			uploadFile += multi.getFilesystemName(name)+","; // 파일이 있으면 컴마를 찍어서 옆으로 계쏙 나와
		}
		
		System.out.println(uploadFile); //전부 더해서 저장한 file name , 단위로 다시 String 배열로 바꿔올 코드 
	
	//	// 다시 불러올 때 , 단위로 쪼개야 하니까 실험코드 
		//String[] check = uploadFile.split(",");
		//for(String temp: check) {
		//	System.out.println(temp);
		//}
		
		// check 해볼 코드
		// 세션을 받는다 (아이디)
		
		HttpSession session = request.getSession();

		// 폼에서 받아와야 할 것 같은데
		//로그인한 정보에서 가지고 오니까 MemberDT에서 일단 가지고 올게
		MemberDTO dto = (MemberDTO)session.getAttribute("info");

		//로그인한 아ㅣ디 // 작성자
		String writer = dto.getM_Id(); 
		
		//파일 이름에 한글이 들어가면 얘를 다시 불러올 때 깨짐
		URLEncoder.encode(uploadFile, "UTF-8");
		String title = multi.getParameter("title");
		String content = multi.getParameter("content");
	
		System.out.println(writer);
		System.out.println(title);
		System.out.println(content);
		
		
		PolicyDTO pdto = new PolicyDTO(writer, content, uploadFile, title);
		PolicyDAO dao = new PolicyDAO();
		
		int row = dao.update(pdto);
		
		if(row>0) {
			System.out.println("DB에 파일 들어감");
		}else {
			System.out.println("DB에 파일 안드루감");
		}
		response.sendRedirect("testAll2.jsp");
		
		
	}

}
