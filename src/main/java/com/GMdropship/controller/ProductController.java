package com.GMdropship.controller;

import com.GMdropship.model.Product;
import com.GMdropship.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;


@Controller
@RequestMapping(value = "/product")
public class ProductController {

    @Resource
    private ProductService productservice;


    @RequestMapping(value = "list")
    public String list(Integer currPage, Product p, Model model) {
        model.addAttribute("page", productservice.queryAll(currPage, p));
        return "bvo-index";
    }


    @RequestMapping(value = "/detail")
    public String detail(Product p, Model model) {

        model.addAttribute("detail", this.productservice.detail(p));
        return "bvo-goodsdetail";

    }

}
