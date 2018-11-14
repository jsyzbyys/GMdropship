package com.GMdropship.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GMdropship.mapper.BvoMapper;
import com.GMdropship.mapper.StoreMapper;
import com.GMdropship.model.Store;



@Service
public class StoreServiceImpl implements StoreService {
	
	@Autowired
	private StoreMapper storemapper;
	
	@Autowired
	private BvoMapper bvomapper;

	public List<Store> queryam(String username) {
		
		return storemapper.queryamByMId(bvomapper.queryByUsername(username).getBuyMangerId());
	}

	public List<Store> queryeb(String username) {
		// TODO Auto-generated method stub
		return storemapper.queryebByMId(bvomapper.queryByUsername(username).getBuyMangerId());
	}

	public void Add(Store store) {
		this.storemapper.Add(store);
		
	}
	
	
}
