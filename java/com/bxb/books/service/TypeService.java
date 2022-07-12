package com.bxb.books.service;

import com.bxb.books.pojo.Category;

import java.util.ArrayList;

public interface TypeService {
    ArrayList<Category> listCategory();

    void updateBookType(Category category);

    void delBookType(Integer cid);

    void addBookType(String cname);
}
