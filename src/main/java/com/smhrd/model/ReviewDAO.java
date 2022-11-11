package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class ReviewDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	// 리뷰 목록 가져오기
	public ArrayList<ReviewDTO> reviewShow(BigDecimal p_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<ReviewDTO> rList = (ArrayList) session.selectList("reviewShow", p_num);
		session.close();

		return rList;
	}
	
	// 리뷰 세부 정보 가져오기
	public ReviewDTO reviewDetailShow(BigDecimal r_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ReviewDTO detail = session.selectOne("reviewDetailShow",r_num);
		session.close();
		
		return detail;
	}

	// 리뷰 작성
	public int reviewWrite(ReviewDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("reviewWrite", dto);
		session.close();

		return row;
	}

	// 리뷰 삭제
	public int reviewDelete(ReviewDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("reviewDelete", dto);
		session.close();

		return row;
	}

	// 리뷰 수정
	public int reviewUpdate(ReviewDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("reviewUpdate", dto);
		session.close();

		return row;
	}
	
	
}
