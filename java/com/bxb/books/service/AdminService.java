package com.bxb.books.service;

import com.bxb.books.pojo.Admin;

public interface AdminService {
    Admin select(Admin ad);

    void alterpwd(Admin ad);
}
