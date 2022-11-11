package com.smhrd.model;

import java.math.BigDecimal;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class ReviewLikeDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int reviewIsLike(ReviewLikeDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.selectOne("reviewIsLike", dto);
		session.close();

		return row;
	}

	public int reviewLikePlus(ReviewLikeDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("reviewLikePlus", dto);
		session.close();
		
		return row;
	}
	
	public int reviewLikeMinus(ReviewLikeDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("reviewLikeMinus", dto);
		session.close();
		
		return row;
	}
	
	public void setReviewLikeCount(BigDecimal b_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.update("setReviewLikeCount",b_num);
		session.close();
		
	}
}
