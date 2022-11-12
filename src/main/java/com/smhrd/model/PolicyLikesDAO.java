package com.smhrd.model;

import java.math.BigDecimal;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class PolicyLikesDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int isPolicyLiked(PolicyLikesDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.selectOne("isPolicyLiked", dto);
		session.close();

		return row;
	}

	public int PolicyLikesPlus(PolicyLikesDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("PolicyLikesPlus", dto);
		System.out.println("이게 출력되면 db에 들어갔단 소린디");
		session.close();

		return row;
	}

	public int PolicyLikesMinus(PolicyLikesDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("PolicyLikesMinus", dto);
		System.out.println("이게 출력되면 db에 들어갔단 소린디");
		session.close();

		return row;
	}

	public void PolicysetCount(BigDecimal p_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.update("PolicysetCount", p_num);
		session.close();

	}

}
