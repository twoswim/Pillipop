package com.kh.pillipop.medicine.model.service;

import java.util.List;
import java.util.Map;

import com.kh.pillipop.medicine.model.vo.MLike;
import com.kh.pillipop.medicine.model.vo.Medicine;

public interface MedicineService {
	List<Medicine> selectAll();
	Medicine selectByNo(int itemSeq);
	int selectMedicineCount();
	List<Medicine> selectLikeMedicine();
	List<MLike> selectLike();
	void insertLike(int u_no, int itemSeq);
	void deleteLike(int u_no, int itemSeq);
	List<Map<String, Object>> auto(Map<String, Object> paramMap) throws Exception;
}
