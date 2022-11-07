package com.kh.pillipop.medicine.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.pillipop.medicine.model.mapper.MedicineMapper;
import com.kh.pillipop.medicine.model.vo.MLike;
import com.kh.pillipop.medicine.model.vo.Medicine;

@Service
public class MedicineServiceImpl implements MedicineService {

	@Autowired
	private MedicineMapper mapper;

	@Override
	public List<Medicine> selectAll() {
		return mapper.selectAll();
	}
	
	@Override
	public Medicine selectByNo(int itemSeq) {
		Medicine medicine = mapper.selectByNo(itemSeq);
		return medicine;
	}

	@Override
	public int selectMedicineCount() {
		return mapper.selectCount();
	}
	
	@Override
	public List<Medicine> selectLikeMedicine() {
		return mapper.selectLikeMedicine();
	}

	@Override
	public List<MLike> selectLike() {
		return mapper.selectLike();
	}

	@Override
	public void insertLike(int u_no, int itemSeq) {
		mapper.insertLike(u_no, itemSeq);
	}

	@Override
	public void deleteLike(int u_no, int itemSeq) {
		mapper.deleteLike(u_no, itemSeq);
	}
	
	@Override
	public List<Map<String, Object>> auto(Map<String, Object> paramMap) throws Exception {
		return mapper.auto(paramMap);
	}

}
