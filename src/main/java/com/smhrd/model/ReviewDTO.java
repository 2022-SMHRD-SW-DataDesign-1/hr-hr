package com.smhrd.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;


@AllArgsConstructor
@Getter
public class ReviewDTO {

	private int r_num;
	private String r_title;
	private String r_content;
	private String r_file;
	private Date r_date;
	private String m_id;
	private int p_num;
}
