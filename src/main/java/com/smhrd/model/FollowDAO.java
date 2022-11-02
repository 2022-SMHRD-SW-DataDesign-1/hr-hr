package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class FollowDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	// 팔로우
		public int follow(BlockDTO dto) {
			SqlSession session = sqlSessionFactory.openSession(true);
			int row = session.insert("block", dto);
			session.close();

			return row;
		}

		// 팔로우 해제
		public int unFollow(BlockDTO dto) {
			SqlSession session = sqlSessionFactory.openSession(true);
			int row = session.delete("unBlcok", dto);
			session.close();

			return row;
		}
}
