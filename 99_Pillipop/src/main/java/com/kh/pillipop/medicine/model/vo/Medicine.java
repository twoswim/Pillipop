package com.kh.pillipop.medicine.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Medicine {
	private int itemSeq;				// 품목기준코드
	private String itemName;			// 제품명
	private String entpName;			// 제조사
	private String itemImage;			// 이미지
	private String efcyQesitm;			// 증상
	private String useMethodQesitm;		// 섭취방법
	private String depositMethodQesitm;	// 보관법
	private String intrcQesitm;			// 상호작용
	private String atpnWarnQesitm;		// 경고
	private String atpnQesitm;			// 주의사항
	private String seQesitm;			// 부작용
	private String openDe;				// 공개일자
	private String updateDe;			// 수정일자
	private String u_no;				// 찜한유저번호
}
