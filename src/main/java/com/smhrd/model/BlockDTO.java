package com.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class BlockDTO {

	// 차단 순번
	private int block_num;
	// 회원 아이디
	@NonNull
	private String m_id;
	// 차단 아이디
	@NonNull
	private String block_id;
	// 차단 날짜
	private Date block_date;
}
