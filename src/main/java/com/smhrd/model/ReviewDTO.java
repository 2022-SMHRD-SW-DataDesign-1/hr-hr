package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;


@AllArgsConstructor
@Getter
@RequiredArgsConstructor
public class ReviewDTO {
	
	// 리뷰 글 번호
	private BigDecimal r_num;
	
	// 리뷰 제목
	@NonNull
	private String r_title;
	
	// 리뷰 내용
	@NonNull
	private String r_content;
	
	// 리뷰 업로드 파일
	@NonNull
	private String r_file;
	
	// 리뷰 작성 시간
	private Timestamp r_date;
	
	// 리뷰 작성 아이디
	@NonNull
	private String m_id;
	
	// 정책 글 번호
	@NonNull
	private BigDecimal p_num;
	
	// 리뷰 글 좋아요 수
	private BigDecimal r_like;
	
	
	public ReviewDTO(BigDecimal r_num, @NonNull String m_id, @NonNull BigDecimal p_num) {
		this.r_num = r_num;
		this.m_id = m_id;
		this.p_num = p_num;
	}


	public ReviewDTO(BigDecimal r_num, @NonNull String m_id) {
		this.r_num = r_num;
		this.m_id = m_id;
	}


	public ReviewDTO(BigDecimal r_num, @NonNull String r_title, @NonNull String r_content, @NonNull String r_file) {
		this.r_num = r_num;
		this.r_title = r_title;
		this.r_content = r_content;
		this.r_file = r_file;
	}
	
	
	
	
	
	
	// 리뷰 작성
	// 작성자, 제목, 내용, 업로드 파일, 정책글 번호
	
	// 리뷰 수정
	// 제목, 내용, 업로드 파일, 작성자 , 리뷰글 번호
	
	// 리뷰 삭제
	// 작성자, 리뷰 번호, 정책 글 번호
	

	
	
	
	
}
