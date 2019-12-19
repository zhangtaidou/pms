package com.kedianqiao.service;

import com.kedianqiao.entity.Address;

public interface AddressServer {
    Address selectOneByAddress(Integer admin_id,Integer room_number);
}
