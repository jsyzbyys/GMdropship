package com.GMdropship.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GMdropship.mapper.BvoMapper;
import com.GMdropship.model.Bvo;
import com.GMdropship.model.Bvo_info;
import com.GMdropship.model.Product;

@Service
public class BvoServiceImpl implements BvoService {
	
	private int flag;

	@Autowired
	private BvoMapper bvomapper;
	
	/*根据用户名查找借卖方用户表中用户信息*/
	public Bvo_info queryByUsername(String username) {
		// TODO Auto-generated method stub
		
		return this.bvomapper.queryByUsername(username);	
		
	}
	/*根据借卖方信息表中是否有当前用户信息来确定是增加信息还是修改信息*/
	public void savebvo(int id,String user,Bvo_info bvo) {
		// TODO Auto-generated method stub
		if(this.bvomapper.queryByUsername(user)==null) {
				bvo.setUsername(user);
				bvo.setBvo_id(id);
				this.bvomapper.addbvo(bvo);}
		else {		
				bvo.setUsername(user);
				this.bvomapper.updatebvo(bvo);
		}
	}
	
	public int pre(HttpSession session) {
		// TODO Auto-generated method stub
		String username = ((Bvo)session.getAttribute("bvo")).getBvoname();
		
		System.out.println(username);
		
		System.out.println("........................");
		Bvo_info b = this.queryByUsername(username);
		
		System.out.println(b);
		
		if(this.queryByUsername(username)==null) {
			return 0;	
		}else
			return 1;
	}
	
	public String check(String username) {
		// TODO Auto-generated method stub
		return this.bvomapper.check(username);
	}
	
	public void setBuyID(Integer id) {
		
		this.bvomapper.setBuyID(id);
	}
	


	

}
