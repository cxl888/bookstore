package com.laver.bookstore.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.laver.bookstore.domain.Book;
import com.laver.bookstore.domain.Donate;
import com.laver.bookstore.domain.User;
import com.laver.bookstore.service.IDonateService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class DonateController {
    @Resource
    private IDonateService donateService;

    @RequestMapping("/allDonate")
    public String myBook(Model model, Integer pageNum){
        if(pageNum!=null){
            PageHelper.startPage(pageNum,com.laver.bookstore.util.Constant.UO_PAGE_SIZE);
        }else{
            PageHelper.startPage(1, com.laver.bookstore.util.Constant.UO_PAGE_SIZE);
        }
        List<Donate> donates= donateService.findAllBook();
        //System.out.println(donates.toString());
        PageInfo<Donate> pageInfo = new PageInfo<Donate>(donates);
        //System.out.println(pageInfo);
        model.addAttribute("pageInfo", pageInfo);
        //model.addAttribute("bookOrders", bookOrders);
        //model.addAttribute("user", user);
        model.addAttribute("donates", donates);
        //model.addAttribute("orderDetails", orderDetails);
        return "manage/donate";
    }

    @RequestMapping("/donateView")
    public String donateView(Integer bid,Model model){
        Donate donate=donateService.findById(bid);
        System.out.println(donate.getBname());
        model.addAttribute("donate", donate);
        return "manage/donateDetail";
    }

}
