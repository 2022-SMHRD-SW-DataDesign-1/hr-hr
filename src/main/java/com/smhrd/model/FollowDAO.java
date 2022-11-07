package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class FollowDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	// 팔로우
		public int follow(FollowDTO dto) {
			SqlSession session = sqlSessionFactory.openSession(true);
			int row = session.insert("follow", dto);
			session.close();

			return row;
		}

		// 팔로우 해제
		public int unFollow(FollowDTO dto) {
			SqlSession session = sqlSessionFactory.openSession(true);
			int row = session.delete("unFollow", dto);
			session.close();

			return row;
		}
		
		// 팔로우 숫자 
		public int countFollow(String m_id) {
			SqlSession session = sqlSessionFactory.openSession(true);
			int count = session.selectOne("countFollow", m_id);
			
			session.close();

			return count;
		}
		
		
		// 팔로워 숫자
		public int countFollower(String m_id) {
			SqlSession session = sqlSessionFactory.openSession(true);
			int count = session.selectOne("countFollower", m_id);
			
			session.close();

			return count;
		}
		
		public int followCheck(FollowDTO dto) {
			System.out.println("팔로우 체크 method in");
			System.out.println(dto.getM_id());
			System.out.println(dto.getFollow_id());
			SqlSession session = sqlSessionFactory.openSession(true);
			int row = session.selectOne("followCheck", dto);
			System.out.println("쿼리 리턴 받았나?");
			session.close();

			return row;

			
		}
}
