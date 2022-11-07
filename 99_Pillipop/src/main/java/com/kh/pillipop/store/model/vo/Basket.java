package com.kh.pillipop.store.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Basket {
		private int 	B_num;				//장바구니 번호
		private int 	u_no;				//회원 번호 
		private long 	PRDLST_REPORT_NO;	//제품명
		private int 	B_ea;				//수량
		private Date 	B_date;				//장바구니 담은 날짜  
		private Date 	B_update;			//장바구니 결제/삭제 날짜  
		private String 	B_state;			//장바구니상태 (Y,N,D)
		private String 	BSSH_NM;		    //업체명
		private String	PRDLST_NM;		    //제품명
		private String	RAWMTRL_NM;		    //제품유형
		private String 	hth_img;		    //이미지-썸네일
		private String 	hth_price;		    //가격
		private String 	hth_category;		//카테고리            
		private String 	hth_discount;		//할인율    
}
// [B_state]
// Y : 장바구니 담겨있을때
// S : 결제완료
// N : 장바구니에서 삭제했을때
