package com.smhrd.model;

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

}
