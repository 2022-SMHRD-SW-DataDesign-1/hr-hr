package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class ReviewCommentDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public ArrayList<ReviewCommentDTO> showReviewComment(BigDecimal r_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<ReviewCommentDTO> reviewCmtList = (ArrayList) session.selectList("showReviewComment", r_num);
		session.close();

		return reviewCmtList;
	}
	
	public int writeReviewComment(ReviewCommentDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);

		int row = session.insert("writeComment", dto);
		session.close();
		
		
		return row;
	}

}
