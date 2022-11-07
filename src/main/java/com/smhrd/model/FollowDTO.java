package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@AllArgsConstructor
@Getter
@RequiredArgsConstructor
@NoArgsConstructor
public class FollowDTO {
	private BigDecimal f_num;
	@NonNull
	private String m_id;
	@NonNull
	private String follow_id;
	private Timestamp f_date;

}
