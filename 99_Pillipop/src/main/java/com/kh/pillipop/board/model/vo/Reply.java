package com.kh.pillipop.board.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reply {
	private int reNo; 
	private int boNo; 
	private int u_no;
	private String u_id; 
	private String u_nickname; 
	private String reContent; 
	private String status; 
	private Date reDate; 
	private Date modifiedreDate; 
}
