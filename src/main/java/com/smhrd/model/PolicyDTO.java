package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;
@RequiredArgsConstructor
@AllArgsConstructor
@Getter
@ToString
public class PolicyDTO {
	// 정책 게시글 번호
	private BigDecimal p_num;
	// 정책 게시글 제목
	@NonNull
	private String p_title;
	// 관리자 아이디
	@NonNull
	private String admin_id;
	// 정책 내용
	@NonNull
	private String p_content;
	// 정책 첨부파일
	@NonNull
	private String p_filename;
	// 정책 작성일자
	private Timestamp p_date;
	// 정책 좋아요 수 
	private BigDecimal p_likes;
	// 정책 조회수
	private BigDecimal p_cnt;
	
	// 정책 업로드 DTO @NonNull
	
	
	

}
