package com.GMdropship.service;

import java.util.List;

import com.GMdropship.model.Product;
import com.GMdropship.util.Page;


public interface ProductService {
	
	public List<Product>list();
	
	public Product detail(Product p);
	
	public void flash(int num);

	public Page queryAll(Integer currPage,Product p);
}
