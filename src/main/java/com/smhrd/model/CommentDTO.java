package com.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class CommentDTO {
	
	// 댓글 순번
	private int cmt_num;
	// 원글 순번
	@NonNull
	private int b_num;
	// 댓글 내용
	@NonNull
	private String cmt_content;
	// 댓글 작성 시간
	private Date cmt_date;
	// 댓글 작성 아이디
	@NonNull
	private String cmt_id;
	// 댓글 좋아요 수
	private int cmt_likes;

}
