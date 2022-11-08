package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class BlockDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 차단
	public int block(BlockDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("block", dto);
		session.close();

		return row;
	}

	// 차단 해제
	public int unBlock(BlockDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("unBlock", dto);
		session.close();

		return row;
	}
	
	public int blockCheck (BlockDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.selectOne("blockCheck", dto);
		session.close();
		
		return row;
	}

}
