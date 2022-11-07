package com.smhrd.model;

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
	
	//List("showPolicy", admin_id);
}
