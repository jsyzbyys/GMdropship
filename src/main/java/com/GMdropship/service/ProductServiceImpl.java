package com.GMdropship.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GMdropship.mapper.ProductMapper;
import com.GMdropship.model.Product;
import com.GMdropship.util.Page;
import com.github.pagehelper.PageHelper;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductMapper productmapper;

	public List<Product> list() {
		// TODO Auto-generated method stub
		return this.productmapper.list();
	}

	public Product detail(Product p) {
		// TODO Auto-generated method stub
		return this.productmapper.detail(p);
	}

	public void flash(int num) {
		// TODO Auto-generated method stub
		this.productmapper.flash(num);
	}
	
	public Page queryAll(Integer currPage,Product p) {
		// TODO Auto-generated method stub
		if(currPage ==null)currPage=1;
		Page page = new Page();
		page.setCurrPage(currPage);
		
		//����ҳ��
		page.setTotalCount(this.productmapper.selCount(p));
		//������ҳ��
		page.init();
		PageHelper.startPage(currPage,Page.PAGE_SIZE);
		page.setData(this.productmapper.list());	
		return page;
	}

}
