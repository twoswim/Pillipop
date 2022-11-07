package com.kh.pillipop.store.model.vo;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Order {
		private int 	or_no;				//주문 번호
		private int 	u_no;				//회원 번호 
		private String 	recipient;			//수령인
		private String 	r_phone;			//수령인 폰번호
		private int 	addr_postal;		//우편번호
		private String 	addr_road;			//도로명주소
		private String 	addr_land;			//지번주소  
		private String 	addr_detail;		//상세주소
		private String 	addr_detail_add;	//참고항목
		private String 	r_memo;				//배송주문
		private Date	or_date;			//주문날짜
		private int		or_price;			//주문총값
		private List<Basket> baskets; 		//장바구니 리스트
}
