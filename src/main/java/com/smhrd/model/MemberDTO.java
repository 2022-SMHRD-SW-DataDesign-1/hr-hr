package com.smhrd.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor

public class MemberDTO {
    @Builder
    public MemberDTO(String m_Id, String m_Pw, String m_Name, String m_Nickname, String m_Phone ) {
    	this.m_Id = m_Id;
    	this.m_Pw = m_Pw;
    	this.m_Name = m_Name;
    	this.m_Nickname = m_Nickname;
    	this.m_Phone = m_Phone;
    	
    }
   

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
   
    private Date m_Joindate;

    // 회원 프로필 
    private String m_Profile;

    // 회원 포인트 
    private Double m_Point;

    // 회원 유형 
    private String m_Type;
    
    // 회원가입 DTO
    

    
    
    
}
