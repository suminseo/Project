package com.qtqt.mvc.member.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor	
public class Member {
	private String id;
	private String password;
	private String name;
	private String email;
	private String profile;
	private String phone;
	private String role;
	private String area1;
	private String area2;
	private Date enrollDate;
}

