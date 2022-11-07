package com.kh.pillipop.medicine.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.pillipop.medicine.model.mapper.MedicineMapper2;
import com.kh.pillipop.medicine.model.vo.Medicine2;

@Service
public class MedicineServiceImpl2 implements MedicineService2 {

	@Autowired
	private MedicineMapper2 mapper;

	@Override
	public List<Medicine2> selectAll() {
		return mapper.selectAll();
	}

	@Override
	public Medicine2 selectByNo(int ITEM_SEQ) {
		Medicine2 medicine = mapper.selectByNo(ITEM_SEQ);
		return medicine;
	}

	@Override
	public int selectMedicineCount() {
		return mapper.selectCount();
	}

}
