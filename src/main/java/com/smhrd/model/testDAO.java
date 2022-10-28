package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class testDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int testInsert(String test) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("testInsert",test);
		session.close();
		
		return row;
	}
}
