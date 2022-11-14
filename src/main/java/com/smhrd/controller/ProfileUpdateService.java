package com.smhrd.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

public class ProfileUpdateService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		MemberDTO dto = (MemberDTO)session.getAttribute("info");
		String m_id = dto.getM_Id();
		String savePath = "C:\\Users\\smhrd\\git\\hr-hr\\src\\main\\webapp\\file";
		int maxSize = 10*1024*1024;
		String encoding = "UTF-8";
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();
		
		MultipartRequest multi = new MultipartRequest(request,savePath,maxSize,encoding,rename);//<<== 여기까지 코드가 실행이 되면
		String m_Nickname = multi.getParameter("m_Nickname");
		String m_Profile = multi.getParameter("m_Profile");
		String t_pic = multi.getFilesystemName("m_pic");
		
		MemberDTO update_dto = new MemberDTO(m_id,"비번", "이메일", m_Nickname, m_Profile, "회원 타입", t_pic);
		MemberDAO dao = new MemberDAO();
		
		dao.profileUpdate(update_dto);
		MemberDTO up_aft_dto = dao.information(m_id);
		
		session.setAttribute("info", up_aft_dto);
		response.sendRedirect("./Main.jsp");
	}

}
