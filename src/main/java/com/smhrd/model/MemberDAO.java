package com.smhrd.model;

import java.math.BigDecimal;
import java.util.ArrayList;

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
	
	public ArrayList<MemberDTO> showAll(String m_id){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<MemberDTO> mList = (ArrayList)session.selectList("showAll",m_id);
		session.close();
		return mList;
	}
	
	public int profileUpdate(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("profileUpdate", dto);
		session.close();
		
		return row;
	}

	public int privacyUpdate(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("privacyUpdate", dto);
		session.close();
		
		return row;
	}
	public MemberDTO information(String m_id) {
		SqlSession session = sqlSessionFactory.openSession(true);

		MemberDTO info = session.selectOne("information", m_id);
		session.close();

		return info;
	}
	
	public int UsefulPointCheck(String m_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.selectOne("UsefulPointCheck", m_id);
		session.close();
		
		return row;
	}
	
	public void PointUpdate(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.update("PointUpdate", dto);
		session.close();
		
	}
	
	public ArrayList<String> RankCount(){
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<String> rank = (ArrayList)session.selectList("RankCount");
		session.close();
		
		return rank;
	}
	
	public String findWriter(BigDecimal b_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		String writer = session.selectOne("findWriter", b_num);
		session.close();
		
		return writer;
	}
	public ArrayList<String> RandomUser(String m_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<String> userList = (ArrayList)session.selectList("RandomUser",m_id);
		session.close();
		
		return userList;
	}
}
