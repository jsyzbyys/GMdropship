package com.GMdropship.controller;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.GMdropship.model.Bvo;
import com.GMdropship.model.Bvo_info;
import com.GMdropship.model.Product;
import com.GMdropship.service.BvoLoginService;
import com.GMdropship.service.BvoService;


@Controller
@RequestMapping(value="/bvo")
public class BvoController {
	
	@Resource
	private BvoService bvoservice;
	

	@Resource
	private BvoLoginService bvoLoginService;
	
	
	@RequestMapping(value="/preinfo")
	public String preinfo(HttpSession session,Model model) {
		
		
		
		if(this.bvoservice.pre(session)==0) {
			model.addAttribute("check", this.bvoservice.pre(session));
			return "bvo-myinfo";
		}else {
			model.addAttribute("check", this.bvoservice.pre(session));
			String username = ((Bvo)session.getAttribute("bvo")).getBvoname();
			Bvo_info a = this.bvoservice.queryByUsername(username);
			model.addAttribute("bvo_info", a);	
			return "bvo-myinfo";
		}
				
	}
	
	@RequestMapping(value="/savebvo",method = RequestMethod.POST)
	public String savebvo(Bvo_info bvo,HttpSession session) {
		/*从session中取当前登陆用户*/
		Bvo b = (Bvo)session.getAttribute("bvo");
		/*获取当前用户的用户名和id*/
		String user = b.getBvoname();
		int id = b.getBvoid();
		System.out.println(id);
		this.bvoservice.savebvo(id,user,bvo);
		
		return "redirect:/bvo/queryUser";
		
	}
	
	@RequestMapping(value="bvoLogin")
	@ResponseBody
	public int login(Bvo bvo,HttpSession session) {
		int flag=this.bvoLoginService.login(bvo);
		
		if(flag==0) {
			session.setAttribute("bvo", this.bvoLoginService.queryName(bvo));
		}
		return flag;
	}
	
	
	@RequestMapping(value="showRightUp")
	public String showRightUp(HttpSession session){
		Bvo b = (Bvo) session.getAttribute("bvo");
		session.setAttribute("b", this.bvoLoginService.queryName(b));
		return "bvo_index";
	}
	
	
	@RequestMapping(value = "registerComf")
	@ResponseBody
	public int registerComf(Bvo bvo, HttpSession session) {
		int flag = this.bvoLoginService.register(bvo);
		session.setAttribute("bvo", this.bvoLoginService.queryName(bvo));
		return flag;
	}
	
	
	@RequestMapping(value = "bvoAdd")
	public String add(Bvo bvo) {
		this.bvoLoginService.add(bvo);
		return "bvoLogin";
	}
	
	
}
