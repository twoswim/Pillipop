package com.kh.pillipop.store.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.kh.pillipop.store.model.vo.Basket;
import com.kh.pillipop.store.model.vo.Health;
import com.kh.pillipop.store.model.vo.Order;

@Mapper
public interface HealthMapper {
	List<Health> selectAll();
	Health selectByNo(long PRDLST_REPORT_NO);
	int insertBasket(Basket basket);
	List<Basket> selectBasketList(@Param("u_no") int u_no);
	int selectBasketCount(@Param("u_no") int u_no);
	int deleteBasket(int b_num);
	int orderBasket(int b_num);
	int insertOrder(Order order);
	List<Basket> selectOrders(@Param("u_no") int u_no);
	List<Order> selectListOrder (@Param("u_no") int u_no);
	Order selctOrderInfo(@Param("u_no") int u_no);
}