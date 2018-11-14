package com.GMdropship.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GMdropship.mapper.WishMapper;
import com.GMdropship.model.Wish;

@Service
public class WishServiceImpl implements WishService {

	@Autowired
	private WishMapper wishmapper;
	public Wish check(Wish wish) {
		// TODO Auto-generated method stub
		return this.wishmapper.check(wish);
	}

	public void addwish(Wish wish) {
		// TODO Auto-generated method stub
		this.wishmapper.addwish(wish);
	}
	
	public List<Wish> queryByBid(Integer id) {
		// TODO Auto-generated method stub
		return this.wishmapper.queryByBid(id);
	}

	public void delById(String[] arr) {
		// TODO Auto-generated method stub
		
		for(String a:arr) {
			this.wishmapper.delById(Integer.valueOf(a));
			
		}
	}

}
