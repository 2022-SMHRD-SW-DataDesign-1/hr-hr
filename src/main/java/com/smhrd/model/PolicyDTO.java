package com.smhrd.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public class PolicyDTO {
	private int p_num;
	private String p_title;
	private String admin_id;
	private String p_content;
	private String p_filename;
	private Date p_date;
	private int p_likes;
	private int p_cnt;
}
