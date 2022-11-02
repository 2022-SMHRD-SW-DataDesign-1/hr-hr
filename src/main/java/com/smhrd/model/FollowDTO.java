package com.smhrd.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public class FollowDTO {
	private int f_num;
	private String m_id;
	private String follow_id;
	private Date f_date;
	
}
