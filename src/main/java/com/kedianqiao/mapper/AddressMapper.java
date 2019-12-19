package com.kedianqiao.mapper;

import com.kedianqiao.entity.Address;

public interface AddressMapper {
    //根据房间号查询指定订单
    Address selectOneByAddress(Integer admin_id,Integer room_number);
}
