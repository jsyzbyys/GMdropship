package com.GMdropship.mapper;

import java.util.List;

import com.GMdropship.model.Order;

public interface OrderMapper {
	
	public void addorder(Order order);
	
	public void updateorder(Order order);
	
	public Order check(Order order);
	
	public List<Order> queryByBvoid(Order order);
	
	public Order queryById(Integer id);

}
