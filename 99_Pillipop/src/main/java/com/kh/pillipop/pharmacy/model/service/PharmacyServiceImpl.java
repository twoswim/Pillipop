package com.kh.pillipop.pharmacy.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.pillipop.pharmacy.model.mapper.PharmacyMapper;
import com.kh.pillipop.pharmacy.model.vo.pLike;
import com.kh.pillipop.pharmacy.model.vo.Pharmacy;

@Service
public class PharmacyServiceImpl implements PharmacyService {
	
	@Autowired
	private PharmacyMapper mapper;
	
	@Override
	public List<Pharmacy> getPharmList(Map<String, String> searchMap) {
		
		return mapper.selectPharmList(searchMap);
	}
	
	@Override
	public Pharmacy selectPharmNo(int dutyNo) {
		
		return mapper.selectPharmNo(dutyNo);
	}
	
	@Override
	public List<Pharmacy> selectLikePharmacy() {
		return mapper.selectLikePharmacy();
	}
	
	@Override
	public List<pLike> selectPLike() {
		return mapper.selectPLike();
	}
	
	@Override
	public void insertPLike(int u_no, int dutyNo) {
		mapper.insertPLike(u_no, dutyNo);
	}

	@Override
	public void deletePLike(int u_no, int dutyNo) {
		mapper.deletePLike(u_no, dutyNo);
	}
	
}
