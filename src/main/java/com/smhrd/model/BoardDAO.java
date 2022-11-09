package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class BoardDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 업로드
	public int upload(BoardDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("upload", dto);
		session.close();

		return row;
	}
	
	public int countBoard(String m_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		
		int count = session.selectOne("countBoard", m_id);
		return count;
	}
	
	public ArrayList<BoardDTO> showBoard(String m_id){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<BoardDTO> bdto = (ArrayList)session.selectList("showBoard", m_id);
		session.close();
		return bdto; 
	}
	
	public ArrayList<BoardDTO> showUsefulBoard(String m_id){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<BoardDTO> bdto = (ArrayList)session.selectList("showUsefulBoard", m_id);
		session.close();
		return bdto; 
	}

}
