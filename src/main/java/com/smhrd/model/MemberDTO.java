package com.smhrd.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor

public class MemberDTO {
	 // 회원 아이디 
   @NonNull
	private String mId;

    // 회원 비밀번호 
    @NonNull
    private String mPw;

    // 회원 이름 
    private String mName;

    // 회원 닉네임 
    private String mNickname;

    // 회원 연락처 
    private String mPhone;

    // 회원 가입일자 
    private Date mJoindate;

    // 회원 프로필 
    private String mProfile;

    // 회원 포인트 
    private Double mPoint;

    // 회원 유형 
    private String mType;
    
   
    
    
    
}
