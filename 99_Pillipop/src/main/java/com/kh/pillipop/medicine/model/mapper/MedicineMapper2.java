package com.kh.pillipop.medicine.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.pillipop.medicine.model.vo.Medicine2;

@Mapper
public interface MedicineMapper2 {
	List<Medicine2> selectAll();
	Medicine2 selectByNo(int ITEM_SEQ);
	int selectCount();
}
