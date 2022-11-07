package com.kh.pillipop.medicine.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.kh.pillipop.medicine.model.vo.MLike;
import com.kh.pillipop.medicine.model.vo.Medicine;

@Mapper
public interface MedicineMapper {
	List<Medicine> selectAll();
	Medicine selectByNo(int itemSeq);
	int selectCount();
	List<Medicine> selectLikeMedicine();
	List<MLike> selectLike();
	void insertLike(@Param("u_no")int u_no, @Param("itemSeq")int itemSeq);
	void deleteLike(@Param("u_no")int u_no, @Param("itemSeq")int itemSeq);
	List<Map<String, Object>> auto(Map<String, Object> paramMap) throws Exception;
}
