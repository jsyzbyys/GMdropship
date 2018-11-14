package com.GMdropship.mapper;

import java.util.List;

import com.GMdropship.model.Product;

public interface ProductMapper {
	
	public List<Product> list();
	
	public Product detail(Product p);

	public void flash(int num);
	
	public  Integer selCount(Product p);
}
