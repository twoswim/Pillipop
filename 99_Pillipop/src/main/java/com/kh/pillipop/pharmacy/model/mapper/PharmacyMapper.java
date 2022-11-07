package com.kh.pillipop.pharmacy.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.kh.pillipop.pharmacy.model.vo.pLike;
import com.kh.pillipop.pharmacy.model.vo.Pharmacy;

@Mapper
public interface PharmacyMapper {
	
	List<Pharmacy> selectPharmList(Map<String, String> searchMap);
	Pharmacy selectPharmNo(int dutyNo);
	List<Pharmacy> selectLikePharmacy();
	List<pLike> selectPLike();
	void insertPLike(@Param("u_no")int u_no, @Param("dutyNo")int dutyNo);
	void deletePLike(@Param("u_no")int u_no, @Param("dutyNo")int dutyNo);
	
}
