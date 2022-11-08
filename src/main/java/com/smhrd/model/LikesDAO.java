package com.smhrd.model;


import java.math.BigDecimal;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class LikesDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int isLiked(LikesDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.selectOne("isLiked", dto);
		session.close();
		
		return row;
	}
	
	public int LikesPlus(LikesDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("LikesPlus",dto);
		session.close();
		
		return row;
	}
	public int LikesMinus(LikesDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("LikesMinus",dto);
		session.close();
		
		return row;
	}
	
	public void setCount(BigDecimal b_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.update("setCount",b_num);
		session.close();
		
	}
	
	
	
	
}

