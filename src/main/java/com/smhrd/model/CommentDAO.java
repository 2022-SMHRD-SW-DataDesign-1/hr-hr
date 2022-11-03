package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class CommentDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public ArrayList<CommentDTO> showComment(BigDecimal b_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<CommentDTO> cmtList = (ArrayList) session.selectList("showComment", b_num);
		session.close();

		return cmtList;
	}

}
