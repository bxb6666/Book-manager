package com.bxb.books.dao;

import com.bxb.books.pojo.Admin;

public interface AdminMapper {
    Admin select(Admin ad);

    void alterpwd(Admin ad);
}
