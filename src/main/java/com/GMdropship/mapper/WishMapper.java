package com.GMdropship.mapper;

import java.util.List;

import com.GMdropship.model.Wish;

public interface WishMapper {
	public Wish check(Wish wish);
	
	public void addwish(Wish wish);
	
	public List<Wish> queryByBid(Integer id);

	public void delById(Integer id);
}
