package com.GMdropship.service;

import java.util.List;

import com.GMdropship.model.Store;



public interface StoreService {
	
	public List<Store> queryam(String username);
	
	public List<Store> queryeb(String username);
	
	public void Add(Store store);

}
