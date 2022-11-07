package com.kh.pillipop.pharmacy.model.service;

import java.util.List;
import java.util.Map;

import com.kh.pillipop.pharmacy.model.vo.pLike;
import com.kh.pillipop.pharmacy.model.vo.Pharmacy;

public interface PharmacyService {
	
	List<Pharmacy> getPharmList(Map<String, String> searchMap);
	Pharmacy selectPharmNo(int dutyNo);
	List<Pharmacy> selectLikePharmacy();
	List<pLike> selectPLike();
	void insertPLike(int u_no, int dutyNo);
	void deletePLike(int u_no, int dutyNo);
	
}
