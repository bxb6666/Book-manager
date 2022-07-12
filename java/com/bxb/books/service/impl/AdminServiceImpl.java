package com.bxb.books.service.impl;

import com.bxb.books.service.AdminService;
import com.bxb.books.dao.AdminMapper;
import com.bxb.books.pojo.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin select(Admin ad) {

        return adminMapper.select(ad);
    }

    @Override
    public void alterpwd(Admin ad) {
        adminMapper.alterpwd(ad);
    }
}
