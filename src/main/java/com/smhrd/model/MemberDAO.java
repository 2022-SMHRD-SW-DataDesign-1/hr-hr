package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int join(MemberDTO dto) {

		SqlSession session = sqlSessionFactory.openSession(true);
		System.out.println(dto.getM_Id());
		int row = session.insert("join", dto); // 세션에 받아온 객체를 Mapper에서 insert를 실행해서 1로 표현함 
		session.close();

		return row;

	}

	public MemberDTO login(MemberDTO dto) {
		System.out.println("로그인메소드");
		SqlSession session = sqlSessionFactory.openSession(true);

		MemberDTO info = session.selectOne("login", dto); // 받아온 객체를 MemberDTO 타입으로 Mapper에서 id가 "login" 문장을 실행한다.
		session.close();

		return info;
	}
	
	public boolean IDCheck(String inputID) {
		SqlSession session = sqlSessionFactory.openSession(true);
		boolean checkID = session.selectOne("IDCheck", inputID);
		session.close();
		System.out.println(checkID);
		
		return checkID;
	}

}
