package com.GMdropship.service;

import java.util.List;

import com.GMdropship.model.Wish;

public interface WishService {
	public Wish check(Wish wish);
	public void addwish(Wish wish);
	
	public List<Wish> queryByBid(Integer id);
	
	public void delById(String[] arr);

}
