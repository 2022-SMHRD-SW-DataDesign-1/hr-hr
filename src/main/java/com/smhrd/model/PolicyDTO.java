package com.smhrd.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public class PolicyDTO {
	// 정책 게시글 번호
	private int p_num;
	// 정책 게시글 제목 (DB 추가 필요!)
	private String p_title;
	// 관리자 아이디
	private String admin_id;
	// 정책 내용
	private String p_content;
	// 정책 첨부파일
	private String p_filename;
	// 정책 작성일자
	private Date p_date;
	// 정책 좋아요 수 
	private int p_likes;
	// 게시글 조회수
	private int p_cnt;
	
	// 게시글 업로드 DTO
	public PolicyDTO(String p_title, String admin_id, String p_content, String p_filename, Date p_date, int p_likes,
			int p_cnt) {
		
		this.p_title = p_title;
		this.admin_id = admin_id;
		this.p_content = p_content;
		this.p_filename = p_filename;
		this.p_date = p_date;
		this.p_likes = p_likes;
		this.p_cnt = p_cnt;
	}
	
	
	
}
