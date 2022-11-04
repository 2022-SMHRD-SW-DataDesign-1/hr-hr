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
public class CommentDTO {
	
	// 댓글 순번
	private BigDecimal cmt_num;
	// 원글 순번
	@NonNull
	private BigDecimal b_num;
	// 댓글 내용
	@NonNull
	private String cmt_content;
	// 댓글 작성 시간
	private Timestamp cmt_date;
	// 댓글 작성 아이디
	@NonNull
	private String cmt_id;
	// 댓글 좋아요 수
	private BigDecimal cmt_likes;

}
