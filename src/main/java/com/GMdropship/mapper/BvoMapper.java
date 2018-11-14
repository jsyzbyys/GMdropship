package com.GMdropship.mapper;


import com.GMdropship.model.Bvo;
import com.GMdropship.model.Bvo_info;


public interface BvoMapper {
	
	public void addbvo(Bvo_info bvo);
	
	public void updatebvo(Bvo_info bvo);
	
	public Bvo_info queryByUsername(String username);
	
	public String check(String username);
	
	public void setBuyID(Integer id);
	
	public Bvo queryByName(Bvo bvo);
	
	public Bvo queryName(Bvo bvo);
	
	public void add(Bvo bvo);

}
