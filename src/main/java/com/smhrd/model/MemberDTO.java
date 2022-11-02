package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
@ToString
public class MemberDTO {
	// 회원가입 DTO

	// 회원 아이디 
	@NonNull
	private String m_Id;

	// 회원 비밀번호
	@NonNull
	private String m_Pw;

	// 회원 이름
	private String m_Name;

	// 회원 닉네임
	private String m_Nickname;

	// 회원 연락처
	private String m_Phone;

	// 회원 가입일자
	private Timestamp m_Joindate;

	// 회원 프로필
	private String m_Profile;

	// 회원 포인트
	private BigDecimal m_Point;

	// 회원 유형
	private String m_Type;

	public MemberDTO(String m_Id, String m_Pw, String m_Name, String m_Nickname, String m_Phone) {
		this.m_Id = m_Id;
		this.m_Pw = m_Pw;
		this.m_Name = m_Name;
		this.m_Nickname = m_Nickname;
		this.m_Phone = m_Phone;

	}

}
