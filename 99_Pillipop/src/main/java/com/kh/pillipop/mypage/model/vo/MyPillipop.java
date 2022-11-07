package com.kh.pillipop.mypage.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MyPillipop {
	private int u_no;
	private int itemSeq; //혹시 코드가 길면 타입을 바꿔야할듯
	private String itemName;
	private String itemEffect;
	private String itemImage;
	private String itemStart;
	private String itemEnd;
	private String itemCycle1;
	private String itemCycle2;
	private String itemCycle3;
	private int itemNum;
	private String memo;
}
