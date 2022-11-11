package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class PolicyDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 업로드
	public int upload(PolicyDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("p_upload", dto);
		session.close();
		
		return row;
	}
	
	// 정책 목록 보여주기
	public ArrayList<PolicyDTO> showPolicy(){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<PolicyDTO> list = (ArrayList)session.selectList("showPolicy");
		session.close();
		
		return list;
	}
	
	// 정책 수정
	public int update(PolicyDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("p_update", dto);
		session.close();
		
		return row;
	}
	
	// 정책 세부내용 조회
	public PolicyDTO showDetail(int p_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		PolicyDTO policy = session.selectOne("p_showDetail",p_num);
		session.close();
		
		return policy;
	}
	
	// 정책 제목,날짜 최신 3개만 조회
	public ArrayList<PolicyDTO> showPolicy3(){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<PolicyDTO> list3 = (ArrayList)session.selectList("showPolicy3");
		session.close();
		
		return list3;
	}
}
