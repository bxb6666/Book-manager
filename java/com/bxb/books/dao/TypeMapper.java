package com.bxb.books.dao;

import com.bxb.books.pojo.Category;

import java.util.ArrayList;

public interface TypeMapper {
    ArrayList<Category> listCategory();

    void updateBookType(Category category);

    void delBookType(Integer cid);

    void addBookType(String cname);
}
