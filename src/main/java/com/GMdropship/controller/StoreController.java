package com.GMdropship.controller;

import com.GMdropship.model.Bvo;
import com.GMdropship.model.Bvo_info;
import com.GMdropship.model.Store;
import com.GMdropship.service.BvoService;
import com.GMdropship.service.StoreService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping(value = "/store")
public class StoreController {

    @Resource
    private StoreService storeservice;

    @Resource
    private BvoService bvoservice;

    @RequestMapping(value = "check")
    public String storecheck(HttpSession session) {
        Bvo users = (Bvo) session.getAttribute("bvo");
        String s = this.bvoservice.check(users.getBvoname());
        if (s == null || s.equals("")) {
            return "bvo-shops";
        } else
            return "redirect:/store/list";
    }

    @RequestMapping(value = "list")
    public String storelist(HttpSession session, Model model) {
        Bvo users = (Bvo) session.getAttribute("bvo");
        model.addAttribute("amlist", storeservice.queryam(users.getBvoname()));
        model.addAttribute("eblist", storeservice.queryeb(users.getBvoname()));

        return "bvo-goodsstoreAdd";
    }


    @RequestMapping(value = "add")
    public String storeAdd(Store store, HttpSession session) {
        Bvo users = (Bvo) session.getAttribute("bvo");

        Bvo_info bvo = this.bvoservice.queryByUsername(users.getBvoname());
        String buyMangerId = bvo.getBuyMangerId();
        if (buyMangerId == null || buyMangerId.equals("")) {
            this.bvoservice.setBuyID(bvo.getBvo_id());
        }

        Bvo_info bvo1 = this.bvoservice.queryByUsername(users.getBvoname());
        String buyMangerId1 = bvo1.getBuyMangerId();
        store.setBuyMangerId(buyMangerId1);

        System.out.println("*************aaaaa");
        System.out.println(store);
        this.storeservice.Add(store);

        return "redirect:/store/list";
    }

}
