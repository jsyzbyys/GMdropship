package com.GMdropship.service;

import com.GMdropship.model.Bvo;

public interface BvoLoginService {
	public int login(Bvo bvo);
	
	public Bvo queryName(Bvo bvo);
	
	public void add(Bvo bvo);
	
	
	public int register(Bvo bvo);
}
