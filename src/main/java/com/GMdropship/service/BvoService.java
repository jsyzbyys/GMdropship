package com.GMdropship.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.GMdropship.model.Bvo_info;
import com.GMdropship.model.Product;


public interface BvoService {
	
	public Bvo_info queryByUsername(String username);
	
	public void savebvo(int id,String username,Bvo_info bvo);
	
	public int pre(HttpSession session);
	
	public String check(String username);
	
	public void setBuyID(Integer id);
	
	

}
