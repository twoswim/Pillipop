package com.kh.pillipop.member.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	private int u_no;
	private String u_id;
	private String u_pw;
	private String u_role;
	private String u_img;
	private String u_name;
	private String u_nickname;
	private String u_phone;
	private String u_addr;
	private int u_birth;
	private String u_status;
}
