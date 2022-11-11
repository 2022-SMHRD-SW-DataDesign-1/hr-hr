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
import com.smhrd.model.MemberDTO;
import com.smhrd.model.ReviewDAO;
import com.smhrd.model.ReviewDTO;

public class ReviewService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("ReviewService");

		request.setCharacterEncoding("utf-8");

		// 작성될 정책글의 번호
		BigDecimal p_num = new BigDecimal(Integer.parseInt(request.getParameter("p_num")));

		// MultipartRequest 파라미터

		// 저장경로 -> webapp/file
		String savePath = request.getServletContext().getRealPath("file");
		System.out.println(savePath);

		// 사이즈
		int maxSize = 10 * 1024 * 1024;

		// 인코딩
		String encoding = "utf-8";

		// 업로드 된 파일들의 이름 중복 방지
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

		// 용량이 큰 객체 받아오는 multipart
		MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, rename);

		// 파일이 여러개인 경우 한개의 String으로
		String uploadFile = "";

		// Enumeration 객체에 ArrayList비슷한 기능으로 다 추가
		Enumeration<String> fileNames = multi.getFileNames();

		while (fileNames.hasMoreElements()) {
			// hasmoreelements --> 다음 요소가 있는지 boolean return

			// filenames 객체 하나를 일단 담는 String 변수 name
			String name = (String) fileNames.nextElement();

			// 실제 파일명(선택한)
			System.out.println("실제 파일명 : " + multi.getOriginalFileName(name));
			// 폴더에 저장되는 파일명(중복을 제거한 뒤 저장되는 파일 명)
			System.out.println("실제 파일명 : " + multi.getFilesystemName(name));
			// 파일의 확장자
			System.out.println("실제 파일명 : " + multi.getContentType(name));

			if (fileNames.hasMoreElements() == false) {
				// 마지막 파일은 ','없이 추가 후 종료
				uploadFile += multi.getFilesystemName(name);
				break;
			}
			// 저장된 파일들 이름을 ','로 구분
			uploadFile += multi.getFilesystemName(name) + ",";
		}

		// uploadfile에 파일명이 ','로 구분되어 저장 여부 확인 코드
		System.out.println(uploadFile);

		// 한 줄로 입력된 파일명을 ','로 나눈다
		String[] check = uploadFile.split(",");

		// 나눠진 파일 명들을 String 배열로 가져온다.
		for (String temp : check) {
			System.out.println(temp);
		}

		// String filename = multi.getFilesystemName("filename");
		// 파일명에 한글이 들어가면 깨진채로 불러와서 uploadfile사용
		URLEncoder.encode(uploadFile, "UTF-8");

		String r_content = multi.getParameter("r_content");

		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("info");
		String m_id = dto.getM_Id();
		
		String r_title = multi.getParameter("r_title");
		
		System.out.println("작성자 : " + m_id);
		System.out.println("업로드 파일 : " + uploadFile);
		System.out.println("내용 : " + r_content);
		System.out.println("제목 : " + r_title);

		ReviewDTO r_dto = new ReviewDTO(r_title, r_content, uploadFile, m_id, p_num);
		ReviewDAO r_dao = new ReviewDAO();

		int row = r_dao.reviewWrite(r_dto);
		
		if(row > 0) {
			System.out.println("리뷰 작성 o");
		}else {
			System.out.println("리뷰 작성 x");
		}

	}

}
