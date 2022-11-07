package com.kh.pillipop.board.model.vo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor 
public class Board {
	private int boNo; 
	private int u_no; 
	private String u_nickname; 
	private String title; 
	private String boContent; 
	private String cid; 
	private String attachment;
	private String modifiedAttachment; 
	private int readAccount; 
	private String status; 
	private List<Reply> replies; 
	private Date boDate; 
	private Date modifiedboDate; 
}


