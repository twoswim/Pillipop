package com.kh.pillipop.pharmacy.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Pharmacy {
	private int	   dutyNo	 ; // 시퀀스 번호
	private String dutyUrl	 ; // 기관주소
	private String dutyAddr  ; // 주소
	private String dutyInf   ; // 기관설명상세(비고)
	private String dutyMapimg; // 간이약도
	private String dutyName  ; // 기관명
	private String dutyTel1  ; // 대표전화1
	private String dutyTime1c; // 진료시간(월요일)C	(1~7 : 월~일, 8 : 공휴일)
	private String dutyTime6c; // 진료시간(토요일)C	(c : 영업종료, s : 영업시작)
	private String dutyTime7c; // 진료시간(일요일)C	
	private String dutyTime8c; // 진료시간(공휴일)C	
	private String dutyTime1s; // 진료시간(월요일)S	
	private String dutyTime6s; // 진료시간(토요일)S	
	private String dutyTime7s; // 진료시간(일요일)S	
	private String dutyTime8s; // 진료시간(공휴일)S	
	private String postCdn1  ; // 우편번호1	
	private String postCdn2  ; // 우편번호2	
	private String wgs84Lon  ; // 약국경도	
	private String wgs84Lat  ; // 약국위도
	private String u_no;	   // 찜한유저번호
	
	@Override
	public String toString() {
		return "Pharmacy [dutyNo=" + dutyNo + ", dutyUrl=" + dutyUrl + ", dutyAddr=" + dutyAddr + ", dutyInf=" + dutyInf
				+ ", dutyMapimg=" + dutyMapimg + ", dutyName=" + dutyName + ", dutyTel1=" + dutyTel1 + ", dutyTime1c="
				+ dutyTime1c + ", dutyTime6c=" + dutyTime6c + ", dutyTime7c=" + dutyTime7c + ", dutyTime8c="
				+ dutyTime8c + ", dutyTime1s=" + dutyTime1s + ", dutyTime6s=" + dutyTime6s + ", dutyTime7s="
				+ dutyTime7s + ", dutyTime8s=" + dutyTime8s + ", postCdn1=" + postCdn1 + ", postCdn2=" + postCdn2
				+ ", wgs84Lon=" + wgs84Lon + ", wgs84Lat=" + wgs84Lat + "]";
	}
}