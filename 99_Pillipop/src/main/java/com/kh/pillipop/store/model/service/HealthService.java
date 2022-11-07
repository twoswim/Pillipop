package com.kh.pillipop.store.model.service;

import java.util.List;

import com.kh.pillipop.store.model.vo.Basket;
import com.kh.pillipop.store.model.vo.Health;
import com.kh.pillipop.store.model.vo.Order;


public interface HealthService {
	List<Health> selectAll();
	Health selectByNo(long PRDLST_REPORT_NO);
	int saveBasket(Basket Basket);
	List<Basket> selectBasketList(int u_no);
	int getBasketCount(int u_no);
	int deleteBasket(int b_num);
	int orderBasket(int b_num);
	int saveOrder(Order Order);
	List<Basket> selectOrders(int u_no);
	List<Order> selectListOrder(int u_no);
	Order selctOrderInfo(int u_no);
	
}
