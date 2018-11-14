package com.GMdropship.controller;

import com.GMdropship.model.Bvo;
import com.GMdropship.model.Order;
import com.GMdropship.model.Wish;
import com.GMdropship.service.BvoService;
import com.GMdropship.service.OrderService;
import com.GMdropship.service.WishService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/order")
public class OrderController {

    @Resource
    private OrderService orderservice;

    @Resource
    private BvoService bvoservice;

    @Resource
    private WishService wishservice;

    private int flag;

    @ResponseBody
    @RequestMapping(value = "/addorder")
    public int addorder(HttpSession session, Order order) {
        /*从session中取出当前登陆用户的id放入order对象中*/

        Bvo b = (Bvo) session.getAttribute("bvo");


        int i = b.getBvoid();

        order.setBvo_id(i);

        if (this.orderservice.check(order) != null) {

            flag = this.orderservice.check(order).getStatus();
        }

        this.orderservice.addorder(order);

        return flag;
    }


    @ResponseBody
    @RequestMapping(value = "addwish")
    public int addwish(Wish wish, HttpSession session) {

        Bvo b = (Bvo) session.getAttribute("bvo");

        int i = b.getBvoid();

        wish.setBvo_id(i);

        if (this.wishservice.check(wish) == null) {
            flag = 0;

            this.wishservice.addwish(wish);

        } else {
            flag = 1;
        }

        return flag;
    }

    @RequestMapping(value = "list")
    public String orderlist(Order order, Model model, HttpSession session) {
        Bvo users = (Bvo) session.getAttribute("bvo");
        int bvoid = this.bvoservice.queryByUsername(users.getBvoname()).getBvo_id();
        order.setBvo_id(bvoid);

        model.addAttribute("list", this.orderservice.queryByBvoid(order));
        model.addAttribute("order", order);

        return "bvo-orderlist";
    }


    @RequestMapping(value = "pay")
    public String orderpay(Integer id, Model model) {
        Order order = this.orderservice.queryById(id);
        model.addAttribute("order", order);
        return "bvo-orderPayment";
    }


}
