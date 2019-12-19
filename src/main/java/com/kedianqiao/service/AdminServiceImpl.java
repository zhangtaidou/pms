package com.kedianqiao.service;

import com.kedianqiao.entity.Admin;
import com.kedianqiao.mapper.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminMapper adminMapper;
    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public Admin selectByAdmin(Admin admin) {
        Admin admin1 = adminMapper.selectByAdmin(admin);
        return admin1;
    }
}
