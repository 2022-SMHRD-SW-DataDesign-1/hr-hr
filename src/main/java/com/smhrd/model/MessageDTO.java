package com.smhrd.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public class MessageDTO {
	private String send_id;
	private String dm_content;
	private String to_id;
	private Date date;
}
