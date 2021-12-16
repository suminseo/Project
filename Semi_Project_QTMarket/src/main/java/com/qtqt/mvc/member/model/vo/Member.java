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
	private String originalProfileName;
	private String renamedProfileName;
	private String phone;
	private String role;
	private String area1;
	private String area2;
	private Date enrollDate;
}

//USER_ID,
//USER_PASSWORD,
//USER_NAME,
//USER_EMAIL,
//USER_PROFILE,
//USER_PHONE,
//USER_ROLE,
//USER_ENROLLDATE,
//USER_AREA
