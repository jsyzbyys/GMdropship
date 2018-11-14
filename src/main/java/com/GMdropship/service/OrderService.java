package com.GMdropship.service;

import java.util.List;

import com.GMdropship.model.Order;

public interface OrderService {
	
	public void addorder(Order order);
	
	public Order check(Order order);
	
	public List<Order> queryByBvoid(Order order);
	
	public Order queryById(Integer id);
	
	

}
