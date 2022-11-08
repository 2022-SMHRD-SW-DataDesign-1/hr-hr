package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.BlockDAO;
import com.smhrd.model.BlockDTO;

public class BlockService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int Block_cnt = Integer.parseInt(request.getParameter("Block_cnt"));
		String m_id = request.getParameter("m_id");
		String block_id = request.getParameter("block_id");
		
		BlockDAO dao = new BlockDAO();
		BlockDTO dto = new BlockDTO(m_id, block_id);
		PrintWriter out = response.getWriter();
		
		// 블락 여부에 따라 블락, 블락해제 기능 호출
		
		if(Block_cnt > 0) {
			dao.unBlock(dto);
			out.print(false);
		}else {
			dao.block(dto);
			out.print(true);
		}
		
	}

}
