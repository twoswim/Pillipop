package com.kh.pillipop.medicine.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Medicine2 {
	private int ITEM_SEQ;			// 품목코드
	private String ITEM_NAME;		// 제품명
	private String ENTP_NAME;		// 제조사
	private String ITEM_IMAGE;		// 이미지
	private String DRUG_SHAPE;		// 모양
	private String ITEM_PRINT;		// 표시
	private String ITEM_COLOR;		// 색상
	private String ITEM_LINE;		// 분할선
	private String MARK_IMG;		// 마크이미지
	
}
