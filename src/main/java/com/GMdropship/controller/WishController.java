package com.GMdropship.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.GMdropship.model.Bvo;
import com.GMdropship.model.Bvo_info;
import com.GMdropship.service.BvoService;
import com.GMdropship.service.WishService;



@Controller
@RequestMapping(value="wish")
public class WishController {
	
	@Resource
	private WishService wishservice;
	
	@Resource
	private BvoService bvoservice;
	
	@RequestMapping(value="list")
	public String wishlist(HttpSession session,Model model) {
		Bvo users = (Bvo)session.getAttribute("bvo");
		Integer id = this.bvoservice.queryByUsername(users.getBvoname()).getBvo_id();
		System.out.println(id);
		model.addAttribute("list", this.wishservice.queryByBid(id));
		
		return "bvo-wishlist";
	}
	
	@ResponseBody
	@RequestMapping(value="del")
	public Integer wishdel(String[] arr) {
		
	    this.wishservice.delById(arr);
		return 1 ;
	}

}
