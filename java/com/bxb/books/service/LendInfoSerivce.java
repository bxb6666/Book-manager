package com.bxb.books.service;

import com.bxb.books.util.PageBean;
import com.bxb.books.pojo.LendInfo;

import java.util.Map;

public interface LendInfoSerivce {
    PageBean<LendInfo> queryLeadInfoPage(Map<String, Object> paramMap);

    void backBook(Map<String, Object> ret);

    boolean isLended(LendInfo lendInfo);

    Integer cardState(Integer reader_id);

    void lendBook(LendInfo lendInfo);
}
