package com.kedianqiao.controller;

import com.kedianqiao.entity.Address;
import com.kedianqiao.service.AddressServer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/AddressController")
public class AddressController {
    @Autowired
    AddressServer addressServer;
    @RequestMapping("/selectOneByAddress")
    public Address selectOneByAddress(Integer admin_id,Integer room_number){
        Address address = addressServer.selectOneByAddress(admin_id, room_number);
        //test
        return address;
    }
}
