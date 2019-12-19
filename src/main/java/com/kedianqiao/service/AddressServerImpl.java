package com.kedianqiao.service;

import com.kedianqiao.entity.Address;
import com.kedianqiao.mapper.AddressMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AddressServerImpl implements AddressServer {
    @Autowired
    AddressMapper addressMapper;
    //根据房号查询指定订单
    @Override
    public Address selectOneByAddress(Integer admin_id, Integer room_number) {
        Address address = addressMapper.selectOneByAddress(admin_id, room_number);
        return address;
    }
}
