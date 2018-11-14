package com.GMdropship.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GMdropship.mapper.OrderMapper;
import com.GMdropship.mapper.ProductMapper;
import com.GMdropship.model.Order;

@Service
public  class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderMapper ordermapper;
	
	@Autowired
	
	private ProductMapper productmapper;

	public void addorder(Order order) {
		// TODO Auto-generated method stub
		/*根据三个id找出订单表中的对应记录，如果没有则新建订单，
		 * 如果有则查看状态：
		 * 如果已发货则新建订单，否则就更新数量*/
		if (this.check(order)==null ) {
			this.ordermapper.addorder(order);
			int num = order.getAmount();
			this.productmapper.flash(num);
			
		}else {
			Order o = this.check(order);
			
			if(o.getStatus()==2) {
				
				this.ordermapper.addorder(order);
				int num = order.getAmount();
				this.productmapper.flash(num);
			}else {
				this.ordermapper.updateorder(o);
				int num = order.getAmount();
				this.productmapper.flash(num);
			}
			
			
		}
		
	}

	public Order check(Order order) {
		// TODO Auto-generated method stub
		return this.ordermapper.check(order);
	}

	public List<Order> queryByBvoid(Order order){
		
		return this.ordermapper.queryByBvoid(order);
	}
	
	public Order queryById(Integer id) {
		
		return this.ordermapper.queryById(id);
	}


}
