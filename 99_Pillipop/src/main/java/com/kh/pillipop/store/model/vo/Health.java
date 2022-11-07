package com.kh.pillipop.store.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Health {
	private long PRDLST_REPORT_NO;		//품목제조관리번호    	
	private String BSSH_NM;		        //업체명         
	private String PRDLST_NM;		    //제품명         
	private String PRMS_DT;		        //허가일자        
	private String POG_DAYCNT;		    //소비기한        
	private String NTK_MTHD;		    //섭취방법        
	private String PRIMARY_FNCLTY;		//주된기능성       
	private String IFTKN_ATNT_MATR_CN;	//주의사항        	
	private String CSTDY_MTHD;		    //보관방법        
	private String RAWMTRL_NM;		    //제품유형        
	private String PRDT_SHAP_CD_NM;		//제품형태        
	private String ETC_RAWMTRL_NM;		//기타 원재료      
	private String STDR_STND;		    //성분분석        
	private String hth_img;		        //이미지-썸네일
	private String hth_price;		    //가격          
	private String hth_url;		        //링크-상세   
	private String hth_category;		//카테고리            
	private String hth_discount;		//할인율           
}                                            




