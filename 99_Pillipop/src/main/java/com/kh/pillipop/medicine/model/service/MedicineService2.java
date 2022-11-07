package com.kh.pillipop.medicine.model.service;

import java.util.List;

import com.kh.pillipop.medicine.model.vo.Medicine2;

public interface MedicineService2 {
	List<Medicine2> selectAll();
	Medicine2 selectByNo(int ITEM_SEQ);
	int selectMedicineCount();
}
