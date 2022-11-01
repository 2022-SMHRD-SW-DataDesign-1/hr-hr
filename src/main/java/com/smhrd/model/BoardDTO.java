package com.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
public class BoardDTO {

	private int b_num;
	private String b_title;
	private String b_writer;
	private String b_content;
	private String b_filename;
	private Date b_date;
	private int b_likes;
	private int b_cnt;
	private int b_point;
	
	
}
