package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
public class ReviewCommentDTO {

	@NonNull
	private String m_id;
	@NonNull
	private BigDecimal r_num;
	@NonNull
	private String r_c_content;
	@NonNull
	private String m_nickname;
	private Timestamp r_c_date;
	
	
	
	
	
	
}
