package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@Getter
@ToString
@NoArgsConstructor
public class PolicyDTO {
	// 정책 게시글 번호
	@NonNull
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
	
	public PolicyDTO(@NonNull BigDecimal p_num, @NonNull String p_title, @NonNull String admin_id,
			@NonNull String p_content, @NonNull String p_filename) {
		super();
		this.p_num = p_num;
		this.p_title = p_title;
		this.admin_id = admin_id;
		this.p_content = p_content;
		this.p_filename = p_filename;
	}
	
	public PolicyDTO(@NonNull String p_title, @NonNull String admin_id, @NonNull String p_content,
			@NonNull String p_filename) {
		super();
		this.p_title = p_title;
		this.admin_id = admin_id;
		this.p_content = p_content;
		this.p_filename = p_filename;
	}
	
	
	
	// 정책 업로드 DTO @NonNull
	
	
	
	

}
