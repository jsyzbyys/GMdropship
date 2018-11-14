package com.GMdropship.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GMdropship.mapper.BvoMapper;
import com.GMdropship.model.Bvo;

@Service
public class BvoLoginServiceImpl implements BvoLoginService {

	@Autowired
	private BvoMapper bvoMapper;

	public int login(Bvo bvo) {
		int flag = 0;
		Bvo m = this.bvoMapper.queryByName(bvo);
		
		if(m==null) {
			flag=1;
		}else if(!m.getBvopwd().equals(bvo.getBvopwd())) {
			flag=2;
		}
		return flag;
	}

	public Bvo queryName(Bvo bvo) {
		return this.bvoMapper.queryName(bvo);
	}

	public void add(Bvo bvo) {
		this.bvoMapper.add(bvo);
	}

	public int register(Bvo bvo) {
		int flag=0;
		Bvo m = this.bvoMapper.queryByName(bvo);
		if(m==null) {
			flag = 0;
		}
		else{
			flag = 1;
		}
		return flag;
	}
}
