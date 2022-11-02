package com.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class BoardDTO {
	
	// 게시글 번호
	private int b_num;
	// 게시글 작성자
	@NonNull
	private String b_writer;
	// 게시글 내용
	@NonNull
	private String b_content;
	// 게시글 업로드 파일
	@NonNull
	private String b_filename;
	// 게시글 작성일
	private Date b_date;
	// 게시글 좋아요 수
	private int b_likes;
	// 게시글 조회 수 
	private int b_cnt;
	// 게시글 점수
	private int b_point;
	
	
}
