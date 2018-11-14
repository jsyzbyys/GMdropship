package com.GMdropship.mapper;

import java.util.List;

import com.GMdropship.model.Store;



public interface StoreMapper {
	
	public List<Store> queryamByMId(String buyMangerId);
	
	public List<Store> queryebByMId(String buyMangerId);
	
	public void Add(Store store);
	
	

}
