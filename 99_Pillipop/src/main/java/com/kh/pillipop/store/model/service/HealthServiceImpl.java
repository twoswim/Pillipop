package com.kh.pillipop.store.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.pillipop.store.model.mapper.HealthMapper;
import com.kh.pillipop.store.model.vo.Basket;
import com.kh.pillipop.store.model.vo.Health;
import com.kh.pillipop.store.model.vo.Order;


@Service
public class HealthServiceImpl implements HealthService {

	@Autowired
	private HealthMapper mapper;
	
	@Override
	public List<Health> selectAll() {
		return mapper.selectAll();
	}

	@Override
	public Health selectByNo(long PRDLST_REPORT_NO) {
		Health health = mapper.selectByNo(PRDLST_REPORT_NO);
		
		return health;
	}

	@Override
	@Transactional(rollbackFor =  Exception.class)
	public int saveBasket(Basket Basket) {
		int result = 0;
		
		if(Basket.getB_num() == 0) {
			result = mapper.insertBasket(Basket);
		}
		return result;
	}

	@Override
	public List<Basket> selectBasketList(int u_no) {
		return mapper.selectBasketList(u_no);
	}

	public int getBasketCount(int u_no) {
		return mapper.selectBasketCount(u_no);
	}
	
	@Override
	@Transactional(rollbackFor =  Exception.class)	
	public int deleteBasket(int b_num) {
		return mapper.deleteBasket(b_num);
	}

	@Override
	@Transactional(rollbackFor =  Exception.class)
	public int orderBasket(int b_num) {
		return mapper.orderBasket(b_num);
	}
	
	@Override
	@Transactional(rollbackFor =  Exception.class)
	public int saveOrder(Order Order) {
		int result = 0;
		
		if(Order.getOr_no() == 0) {
			result = mapper.insertOrder(Order);
		}else {
		}
		return result;
	}
	
	@Override
	public List<Basket> selectOrders(int u_no) {
		return mapper.selectOrders(u_no);
	}
	
	@Override
	public List<Order> selectListOrder(int u_no) {
		return mapper.selectListOrder(u_no);
	}
	
	@Override
	public Order selctOrderInfo(int u_no) {
		Order order =  mapper.selctOrderInfo(u_no);
		return order;
	}



}
