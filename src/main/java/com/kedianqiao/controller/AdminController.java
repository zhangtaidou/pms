package com.kedianqiao.controller;

import com.kedianqiao.entity.Admin;
import com.kedianqiao.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/AdminController")
public class AdminController {
    @Autowired
    AdminService adminService;
    @RequestMapping("/login")
    public String login(Admin admin, HttpSession session){
        Admin admin1 = adminService.selectByAdmin(admin);
        if(admin1==null){
            return "login";
        }else {
            session.setAttribute("admin",admin1);
            return "jsp/shouye";
        }

    }
}
